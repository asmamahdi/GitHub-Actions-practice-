# DevOps Practice Examples

This directory contains practical examples you can use to practice common DevOps tasks.

## 📁 Directory Structure

```
practice-examples/
├── README.md (this file)
├── github-actions-pipeline.yml    # Complete CI/CD pipeline
├── terraform-example/             # Infrastructure as Code
│   ├── main.tf
│   └── variables.tf
├── kubernetes-example/            # Kubernetes manifests
│   └── deployment.yaml
└── automation-scripts/            # Bash automation scripts
    └── deploy.sh
```

## 🚀 How to Use These Examples

### 1. GitHub Actions Pipeline

**File:** `github-actions-pipeline.yml`

**What it does:**
- Runs tests on every push/PR
- Builds Docker image
- Deploys to staging/production
- Sends notifications

**How to use:**
1. Copy to `.github/workflows/ci-cd.yml` in your repository
2. Update the environment variables
3. Add your AWS credentials to GitHub Secrets
4. Push to trigger the pipeline

**Practice tasks:**
- [ ] Modify to add a security scan step
- [ ] Add deployment to Kubernetes
- [ ] Configure different environments
- [ ] Add Slack/email notifications

---

### 2. Terraform Infrastructure

**Directory:** `terraform-example/`

**What it does:**
- Creates VPC with public/private subnets
- Provisions EC2 instance
- Sets up security groups
- Configures networking

**How to use:**
```bash
cd terraform-example

# Initialize Terraform
terraform init

# Review what will be created
terraform plan

# Create infrastructure
terraform apply

# Destroy when done
terraform destroy
```

**Before running:**
1. Install Terraform
2. Configure AWS CLI (`aws configure`)
3. Create an AWS key pair
4. Update `variables.tf` with your key pair name

**Practice tasks:**
- [ ] Add a load balancer
- [ ] Create an RDS database
- [ ] Add auto-scaling group
- [ ] Organize into modules
- [ ] Add outputs for other resources

---

### 3. Kubernetes Deployment

**File:** `kubernetes-example/deployment.yaml`

**What it does:**
- Creates namespace
- Deploys application with ConfigMaps and Secrets
- Sets up Service and Ingress
- Configures auto-scaling
- Adds health checks

**How to use:**
```bash
# Start local Kubernetes cluster
minikube start

# Apply the deployment
kubectl apply -f kubernetes-example/deployment.yaml

# Check status
kubectl get all -n devops-practice

# View logs
kubectl logs -f deployment/web-app -n devops-practice

# Clean up
kubectl delete -f kubernetes-example/deployment.yaml
```

**Practice tasks:**
- [ ] Modify resource limits
- [ ] Add a database deployment
- [ ] Configure persistent volumes
- [ ] Set up monitoring
- [ ] Create Helm chart

---

### 4. Deployment Script

**File:** `automation-scripts/deploy.sh`

**What it does:**
- Checks prerequisites
- Builds Docker image
- Runs tests
- Pushes to registry
- Deploys to Kubernetes
- Performs health checks
- Handles rollback on failure

**How to use:**
```bash
# Make executable
chmod +x automation-scripts/deploy.sh

# Deploy to staging
./automation-scripts/deploy.sh staging

# Deploy to production
./automation-scripts/deploy.sh production
```

**Practice tasks:**
- [ ] Add backup before deployment
- [ ] Implement blue/green deployment
- [ ] Add database migration step
- [ ] Create rollback script
- [ ] Add notification on failure

---

## 🎯 Practice Scenarios

### Scenario 1: Complete Setup
1. Use Terraform to provision infrastructure
2. Build application with GitHub Actions
3. Deploy to Kubernetes using the script
4. Set up monitoring

### Scenario 2: Troubleshooting
1. Intentionally break something (wrong image, bad config)
2. Use the script to deploy
3. Practice debugging and fixing
4. Test rollback functionality

### Scenario 3: Multi-Environment
1. Create separate Terraform workspaces for dev/staging/prod
2. Modify pipeline to deploy to different environments
3. Use different Kubernetes namespaces
4. Implement environment-specific configurations

---

## 📝 Notes

- These are **examples** - modify them for your needs
- Always test in a **non-production** environment first
- Review and understand the code before using
- Update security settings (passwords, keys, etc.)
- Follow your organization's best practices

---

## 🔧 Customization Tips

1. **Replace placeholders:**
   - Update image names
   - Change domain names
   - Modify resource names
   - Update credentials

2. **Add your own logic:**
   - Custom health checks
   - Specific deployment steps
   - Your organization's requirements

3. **Security:**
   - Never commit secrets
   - Use secret management tools
   - Review security groups
   - Enable encryption

---

## 🆘 Getting Help

If you get stuck:
1. Read error messages carefully
2. Check tool documentation
3. Search Stack Overflow
4. Ask in DevOps communities
5. Review the main practice guide

---

**Happy Learning! 🚀**


