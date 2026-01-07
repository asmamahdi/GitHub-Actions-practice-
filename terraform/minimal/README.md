# Infrastructure Setup

Terraform configuration for deploying Jenkins server on AWS EC2.

## Quick Start

1. **Configure Variables**
   ```bash
   cp terraform.tfvars.example terraform.tfvars
   # Edit terraform.tfvars with your values
   ```

2. **Deploy**
   ```bash
   terraform init
   terraform plan
   terraform apply
   ```

3. **Get Outputs**
   ```bash
   terraform output jenkins_url
   terraform output jenkins_initial_password_command
   ```

## What Gets Installed

- Java 17
- Jenkins
- Git
- Maven 3.9.5
- Docker
- kubectl
- Helm

## Cost

~$18/month (EC2 t3.small + EBS + Data Transfer)

## Clean Up

```bash
terraform destroy
```
