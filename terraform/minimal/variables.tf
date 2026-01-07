variable "aws_region" {
  description = "AWS region to deploy resources"
  type        = string
  default     = "us-east-1"  # Cheapest region typically
}

variable "project_name" {
  description = "Project name for resource naming"
  type        = string
  default     = "cicd-learning"
}

variable "key_pair_name" {
  description = "AWS Key Pair name for SSH access (must exist in AWS)"
  type        = string
}

variable "my_ip" {
  description = "Your IP address for SSH access (find at https://whatismyipaddress.com). Format: X.X.X.X/32"
  type        = string
}

variable "allowed_cidr_blocks" {
  description = "CIDR blocks allowed to access Jenkins web UI. Use [\"0.0.0.0/0\"] for learning, restrict in production"
  type        = list(string)
  default     = ["0.0.0.0/0"]
}

variable "ami_id" {
  description = "AMI ID for EC2 instance. Leave empty to use latest Amazon Linux 2"
  type        = string
  default     = ""
}

# Data source to get latest Amazon Linux 2 AMI if not specified
data "aws_ami" "amazon_linux" {
  count       = var.ami_id == "" ? 1 : 0
  most_recent   = true
  owners        = ["amazon"]

  filter {
    name   = "name"
    values = ["amzn2-ami-hvm-*-x86_64-gp2"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
}

locals {
  # Use provided AMI ID or get latest Amazon Linux 2
  ami_id = var.ami_id != "" ? var.ami_id : data.aws_ami.amazon_linux[0].id
}


