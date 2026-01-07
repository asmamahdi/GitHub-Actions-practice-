terraform {
  required_version = ">= 1.0"
  
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
  
  # Use local state initially (no S3 needed, saves cost)
  backend "local" {
    path = "terraform.tfstate"
  }
}

provider "aws" {
  region = var.aws_region
}

# Get default VPC (free, no cost)
data "aws_vpc" "default" {
  default = true
}

# Get default subnets (free)
data "aws_subnets" "default" {
  filter {
    name   = "vpc-id"
    values = [data.aws_vpc.default.id]
  }
}

# Security group for Jenkins (minimal rules)
resource "aws_security_group" "jenkins" {
  name        = "${var.project_name}-jenkins-sg"
  description = "Security group for Jenkins server - minimal setup"
  vpc_id      = data.aws_vpc.default.id

  # SSH access (restrict to your IP for security)
  ingress {
    description = "SSH from my IP"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = [var.my_ip]
  }

  # Jenkins web UI (restrict to your IP or use 0.0.0.0/0 for learning)
  ingress {
    description = "Jenkins web UI"
    from_port   = 8080
    to_port     = 8080
    protocol    = "tcp"
    cidr_blocks = var.allowed_cidr_blocks
  }

  # Jenkins agent port (for future use)
  ingress {
    description = "Jenkins agent port"
    from_port   = 50000
    to_port     = 50000
    protocol    = "tcp"
    cidr_blocks = var.allowed_cidr_blocks
  }

  # All outbound traffic (needed for downloads, updates, etc.)
  egress {
    description = "Allow all outbound"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name        = "${var.project_name}-jenkins-sg"
    Environment = "learning"
    Project     = "cicd-practice"
  }
}

# Single EC2 instance for Jenkins (t3.small - minimum suitable size)
resource "aws_instance" "jenkins" {
  ami                    = local.ami_id
  instance_type          = "t3.small"  # 2 vCPU, 2GB RAM - ~$15/month
  key_name               = var.key_pair_name
  vpc_security_group_ids = [aws_security_group.jenkins.id]
  subnet_id              = data.aws_subnets.default.ids[0]

  # User data script to install Jenkins and tools
  user_data = file("${path.module}/jenkins-install.sh")

  # Root volume configuration
  root_block_device {
    volume_type = "gp3"  # Cheaper than gp2
    volume_size = 20     # 20GB is enough for learning
    encrypted   = true
  }

  tags = {
    Name        = "${var.project_name}-jenkins"
    Environment = "learning"
    Project     = "cicd-practice"
    CostCenter  = "training"
  }

  # Enable detailed monitoring (optional, costs extra)
  monitoring = false
}

# Elastic IP (free when attached to running instance)
resource "aws_eip" "jenkins" {
  instance = aws_instance.jenkins.id
  domain   = "vpc"

  tags = {
    Name        = "${var.project_name}-jenkins-eip"
    Environment = "learning"
  }
}

# Outputs
output "jenkins_public_ip" {
  description = "Public IP address of Jenkins server"
  value       = aws_eip.jenkins.public_ip
}

output "jenkins_url" {
  description = "Jenkins web UI URL"
  value       = "http://${aws_eip.jenkins.public_ip}:8080"
}

output "ssh_command" {
  description = "SSH command to connect to Jenkins server"
  value       = "ssh -i ${var.key_pair_name}.pem ec2-user@${aws_eip.jenkins.public_ip}"
}

output "jenkins_initial_password_command" {
  description = "Command to get Jenkins initial admin password"
  value       = "ssh -i ${var.key_pair_name}.pem ec2-user@${aws_eip.jenkins.public_ip} 'sudo cat /var/lib/jenkins/secrets/initialAdminPassword'"
}

output "monthly_cost_estimate" {
  description = "Estimated monthly cost"
  value       = "~$18/month (EC2 t3.small + EBS + Data Transfer)"
}

