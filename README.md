# 🚀 Enterprise CI/CD Pipeline with Jenkins, Docker & Kubernetes

[![CI/CD](https://img.shields.io/badge/CI%2FCD-Pipeline-blue)](https://github.com/asmamahdi/CI-CD-Jenkins-)
[![Jenkins](https://img.shields.io/badge/Jenkins-2.400+-blue)](https://www.jenkins.io/)
[![Docker](https://img.shields.io/badge/Docker-Latest-blue)](https://www.docker.com/)
[![Kubernetes](https://img.shields.io/badge/Kubernetes-1.34+-blue)](https://kubernetes.io/)
[![Terraform](https://img.shields.io/badge/Terraform-1.0+-blue)](https://www.terraform.io/)
[![AWS](https://img.shields.io/badge/AWS-EC2-orange)](https://aws.amazon.com/)

> **A production-ready, end-to-end CI/CD pipeline implementation demonstrating DevOps best practices with Infrastructure as Code, containerization, and container orchestration.**

## 📋 Overview

This project implements a complete CI/CD pipeline that automates the entire software delivery lifecycle from code commit to production deployment. It showcases modern DevOps practices including Infrastructure as Code, containerization, automated testing, code quality analysis, and Kubernetes orchestration.

### 🎯 Key Features

- ✅ **Infrastructure as Code** - Automated AWS infrastructure provisioning with Terraform
- ✅ **CI/CD Automation** - Jenkins pipeline with 10 automated stages
- ✅ **Code Quality** - SonarQube integration for static code analysis
- ✅ **Containerization** - Multi-stage Docker builds for optimized images
- ✅ **Container Orchestration** - Kubernetes deployment with Minikube
- ✅ **Security Best Practices** - Credential management, no hardcoded secrets
- ✅ **Cost-Optimized** - ~$18/month for complete learning environment

## 🏗️ Architecture

```
┌─────────────┐
│   GitHub    │ ──┐
│  Repository │   │ Code Push
└─────────────┘   │
                  ▼
         ┌─────────────────┐
         │  Jenkins Server  │
         │   (AWS EC2)      │
         │                  │
         │  ┌────────────┐  │
         │  │  Pipeline  │  │
         │  │   Stages   │  │
         │  └────────────┘  │
         └──────┬───────────┘
                │
    ┌───────────┼───────────┐
    │           │           │
    ▼           ▼           ▼
┌─────────┐ ┌─────────┐ ┌──────────┐
│SonarQube│ │DockerHub│ │ Minikube │
│ Analysis│ │ Registry│ │  (K8s)   │
└─────────┘ └─────────┘ └──────────┘
```

## 🔄 Pipeline Stages

The Jenkins pipeline automates the following stages:

1. **Checkout Code** - Clone repository from GitHub
2. **Build Application** - Compile Java application with Maven
3. **Run Tests** - Execute unit tests with JUnit
4. **Code Quality Analysis** - SonarQube static analysis
5. **Quality Gate** - Enforce code quality standards
6. **Package Application** - Create JAR artifact
7. **Build Docker Image** - Multi-stage container build
8. **Push to Registry** - Upload to Docker Hub
9. **Deploy to Kubernetes** - Automated K8s deployment
10. **Application Execution** - Run and verify deployment

## 🛠️ Technology Stack

| Category | Technology | Purpose |
|----------|-----------|---------|
| **CI/CD** | Jenkins | Automation server |
| **IaC** | Terraform | Infrastructure provisioning |
| **Cloud** | AWS EC2 | Compute infrastructure |
| **Container** | Docker | Application containerization |
| **Orchestration** | Kubernetes (Minikube) | Container orchestration |
| **Build Tool** | Maven | Java build automation |
| **Code Quality** | SonarQube | Static code analysis |
| **Version Control** | Git/GitHub | Source code management |
| **Registry** | Docker Hub | Container image storage |

## 📦 Project Structure

```
.
├── Jenkinsfile              # Jenkins pipeline definition
├── Dockerfile               # Multi-stage Docker build
├── pom.xml                  # Maven configuration
├── src/                     # Java source code
│   ├── main/java/           # Application code
│   └── test/java/           # Unit tests
├── kubernetes/              # K8s manifests
│   ├── deployment.yaml      # Deployment config
│   ├── service.yaml         # Service config
│   └── namespace.yaml       # Namespace config
└── terraform/               # Infrastructure as Code
    └── minimal/
        ├── main.tf          # Terraform config
        ├── variables.tf     # Variable definitions
        └── jenkins-install.sh # Installation script
```

## 🚀 Quick Start

### Prerequisites

- AWS Account with programmatic access
- AWS CLI configured
- Terraform (v1.0+)
- Docker Hub account
- SonarCloud account (free tier)

### Deployment Steps

1. **Clone Repository**
   ```bash
   git clone https://github.com/asmamahdi/CI-CD-Jenkins-.git
   cd CI-CD-Jenkins-
   ```

2. **Configure Infrastructure**
   ```bash
   cd terraform/minimal
   cp terraform.tfvars.example terraform.tfvars
   # Edit terraform.tfvars with your values
   ```

3. **Deploy Infrastructure**
   ```bash
   terraform init
   terraform plan
   terraform apply
   ```

4. **Configure Jenkins**
   - Access Jenkins: `http://<JENKINS_IP>:8080`
   - Install required plugins
   - Configure credentials (GitHub PAT, Docker Hub)
   - Create pipeline job

5. **Run Pipeline**
   - Trigger build in Jenkins
   - Watch automated deployment

## 🔒 Security

- ✅ **No hardcoded credentials** - All secrets in Jenkins Credential Store
- ✅ **Infrastructure secrets excluded** - `terraform.tfvars` in `.gitignore`
- ✅ **SSH keys protected** - All `.pem` files excluded from Git
- ✅ **Best practices** - Follows OWASP security guidelines

See [SECURITY.md](SECURITY.md) for detailed security practices.

## 💰 Cost Optimization

| Component | Monthly Cost |
|-----------|-------------|
| EC2 t3.small | ~$15 |
| EBS Storage (20GB) | ~$2 |
| Data Transfer | ~$1-2 |
| **Total** | **~$18/month** |

*Minikube runs on the same EC2 instance (no additional cost)*

## 📊 Key Metrics & Results

- **Pipeline Execution Time**: ~5-8 minutes end-to-end
- **Code Coverage**: Automated via SonarQube
- **Deployment Automation**: 100% automated from commit to production
- **Infrastructure Setup**: < 10 minutes with Terraform
- **Zero Downtime**: Rolling deployments with Kubernetes

## 🎓 Learning Outcomes

This project demonstrates proficiency in:

- ✅ CI/CD pipeline design and implementation
- ✅ Infrastructure as Code (Terraform)
- ✅ Containerization and container orchestration
- ✅ Automated testing and quality gates
- ✅ DevOps best practices and security
- ✅ Cloud infrastructure management (AWS)

## 📸 Screenshots

*Add screenshots of:*
- Jenkins pipeline execution
- SonarQube dashboard
- Kubernetes deployment status
- Docker Hub repository

## 🤝 Contributing

Contributions welcome! Please feel free to submit a Pull Request.

1. Fork the repository
2. Create your feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit your changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

## 📝 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 👤 Author

**Asma Mahdi**

- 🔗 [GitHub](https://github.com/asmamahdi)
- 💼 [LinkedIn](https://linkedin.com/in/yourprofile)
- 📧 Email: your.email@example.com

## 🙏 Acknowledgments

- Jenkins community for excellent documentation
- SonarQube for code quality tools
- Kubernetes community for orchestration platform
- AWS for cloud infrastructure

---

⭐ **If you find this project helpful, please give it a star!**

**Built with ❤️ for the DevOps community**
