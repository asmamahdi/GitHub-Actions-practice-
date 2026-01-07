#!/bin/bash
# Jenkins installation script for Amazon Linux 2
# This script installs Jenkins, Java, Maven, Docker, Git, kubectl, and Helm

set -e  # Exit on error

echo "=========================================="
echo "Starting Jenkins installation..."
echo "=========================================="

# Update system packages
echo "Updating system packages..."
sudo yum update -y

# Install required utilities
echo "Installing utilities..."
sudo yum install -y wget curl unzip

# ============================================
# Install Java 17 (required for Jenkins)
# ============================================
echo "Installing Java 17..."
sudo yum install -y java-17-amazon-corretto-devel

# Verify Java installation
java -version

# ============================================
# Install Git
# ============================================
echo "Installing Git..."
sudo yum install -y git
git --version

# ============================================
# Install Maven
# ============================================
echo "Installing Maven..."
cd /tmp
sudo wget https://archive.apache.org/dist/maven/maven-3/3.9.5/binaries/apache-maven-3.9.5-bin.tar.gz
sudo tar -xzf apache-maven-3.9.5-bin.tar.gz -C /opt
sudo mv /opt/apache-maven-3.9.5 /opt/maven
sudo ln -sf /opt/maven/bin/mvn /usr/bin/mvn

# Add Maven to PATH for all users
echo 'export M2_HOME=/opt/maven' | sudo tee -a /etc/profile.d/maven.sh
echo 'export PATH=$M2_HOME/bin:$PATH' | sudo tee -a /etc/profile.d/maven.sh
source /etc/profile.d/maven.sh

# Verify Maven installation
mvn -version

# ============================================
# Install Docker
# ============================================
echo "Installing Docker..."
sudo yum install -y docker
sudo systemctl start docker
sudo systemctl enable docker
sudo usermod -aG docker ec2-user

# Verify Docker installation
docker --version

# ============================================
# Install Jenkins
# ============================================
echo "Installing Jenkins..."
sudo wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat-stable/jenkins.repo
sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io-2023.key
sudo yum install -y jenkins

# Start and enable Jenkins
sudo systemctl start jenkins
sudo systemctl enable jenkins

# Allow Jenkins user to use Docker
sudo usermod -aG docker jenkins

# ============================================
# Install kubectl (for future Kubernetes phases)
# ============================================
echo "Installing kubectl..."
sudo curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
sudo chmod +x kubectl
sudo mv kubectl /usr/local/bin/
kubectl version --client

# ============================================
# Install Helm (for future Helm phases)
# ============================================
echo "Installing Helm..."
curl https://raw.githubusercontent.com/helm/helm/main/scripts/get-helm-3 | bash
helm version

# ============================================
# Configure firewall (if needed)
# ============================================
# Note: Security groups handle firewall rules, but ensure local firewall allows
# sudo systemctl status firewalld  # Check if running
# If firewalld is running, you may need to allow ports

# ============================================
# Installation Complete
# ============================================
echo "=========================================="
echo "Jenkins installation complete!"
echo "=========================================="
echo ""
echo "Next steps:"
echo "1. Get Jenkins initial admin password:"
echo "   sudo cat /var/lib/jenkins/secrets/initialAdminPassword"
echo ""
echo "2. Access Jenkins web UI:"
echo "   http://$(curl -s http://169.254.169.254/latest/meta-data/public-ipv4):8080"
echo ""
echo "3. Installed tools:"
echo "   - Java: $(java -version 2>&1 | head -n 1)"
echo "   - Git: $(git --version)"
echo "   - Maven: $(mvn -version | head -n 1)"
echo "   - Docker: $(docker --version)"
echo "   - kubectl: $(kubectl version --client --short 2>/dev/null || echo 'installed')"
echo "   - Helm: $(helm version --short 2>/dev/null || echo 'installed')"
echo ""
echo "Note: You may need to log out and log back in for Docker group changes to take effect"
echo "=========================================="


