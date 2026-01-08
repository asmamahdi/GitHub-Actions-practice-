# 🚀 GitHub Actions Setup Guide

## Quick Start (5 Minutes)

### Step 1: Push Your Code to GitHub

If you haven't already:

```bash
# Initialize git (if not already done)
git init

# Add all files
git add .

# Commit
git commit -m "Initial commit with GitHub Actions"

# Add your GitHub repository as remote
git remote add origin https://github.com/YOUR_USERNAME/YOUR_REPO_NAME.git

# Push to GitHub
git push -u origin main
```

---

### Step 2: Choose Your Workflow

You have **2 options**:

#### Option A: Simple Pipeline (Recommended to Start)
**File:** `.github/workflows/ci-cd-simple.yml`

**What it does:**
- ✅ Builds your Java app
- ✅ Runs tests
- ✅ Creates JAR file
- ✅ No configuration needed!

**Use this if:** You want to get started immediately

#### Option B: Complete Pipeline
**File:** `.github/workflows/ci-cd.yml`

**What it does:**
- ✅ Everything in simple pipeline
- ✅ Docker image build
- ✅ Push to Docker Hub
- ✅ Deploy to Kubernetes
- ✅ Code quality (SonarCloud)

**Use this if:** You want the full DevOps experience

---

### Step 3: Enable the Workflow

#### For Simple Pipeline:
1. The file `.github/workflows/ci-cd-simple.yml` is already created
2. **Just push to GitHub:**
   ```bash
   git add .github/workflows/ci-cd-simple.yml
   git commit -m "Add GitHub Actions CI/CD pipeline"
   git push
   ```
3. Go to your GitHub repository
4. Click **Actions** tab
5. You'll see your pipeline running! 🎉

#### For Complete Pipeline:
1. The file `.github/workflows/ci-cd.yml` is already created
2. **Configure secrets** (see below)
3. Push to GitHub
4. Watch it run!

---

## 🔐 Setting Up Secrets (For Complete Pipeline)

If you want to use the **complete pipeline** with Docker and Kubernetes, you'll need to add secrets:

### Step 1: Go to Your GitHub Repository

1. Click **Settings** → **Secrets and variables** → **Actions**
2. Click **New repository secret**

### Step 2: Add These Secrets (Optional - only if you need them)

#### For Docker Hub:
- **Name:** `DOCKERHUB_USERNAME`
- **Value:** Your Docker Hub username

- **Name:** `DOCKERHUB_TOKEN`
- **Value:** Your Docker Hub access token
  - Get it from: https://hub.docker.com/settings/security
  - Click "New Access Token"

#### For SonarCloud (Optional):
- **Name:** `SONAR_TOKEN`
- **Value:** Your SonarCloud token
  - Get it from: https://sonarcloud.io/account/security

#### For Kubernetes (Optional):
- **Name:** `KUBE_CONFIG`
- **Value:** Your Kubernetes config file (base64 encoded)

---

## ✅ Testing Your Pipeline

### Test 1: Make a Small Change

1. **Edit a file** (e.g., add a comment to `App.java`)
2. **Commit and push:**
   ```bash
   git add .
   git commit -m "Test CI/CD pipeline"
   git push
   ```
3. **Go to Actions tab** in GitHub
4. **Watch your pipeline run!**

### Test 2: Break Something (Intentionally)

1. **Add a syntax error** to your code
2. **Push it**
3. **See the pipeline fail** (this is learning!)
4. **Fix it and push again**
5. **See it pass!**

---

## 📊 Understanding Your Pipeline

### Simple Pipeline Stages:

```
1. Checkout Code    → Gets your code
2. Setup Java       → Installs Java 17
3. Build            → Compiles your code
4. Test             → Runs your tests
5. Package          → Creates JAR file
6. Upload Artifact  → Saves JAR for download
```

### Complete Pipeline Stages:

```
1. Build and Test   → Compile, test, package
2. Code Quality     → SonarCloud analysis (optional)
3. Build Docker     → Create Docker image
4. Push Docker      → Upload to Docker Hub
5. Deploy K8s       → Deploy to Kubernetes
6. Notify           → Send notifications
```

---

## 🐛 Troubleshooting

### Pipeline Not Running?

1. **Check file location:** Must be `.github/workflows/*.yml`
2. **Check file name:** Must end with `.yml` or `.yaml`
3. **Check YAML syntax:** Use a YAML validator
4. **Check branch:** Pipeline triggers on `main` branch by default

### Build Failing?

1. **Check the error message** in Actions tab
2. **Common issues:**
   - Missing dependencies in `pom.xml`
   - Test failures
   - Java version mismatch
   - Missing files

### Docker Build Failing?

1. **Check Dockerfile** exists and is correct
2. **Check Docker Hub credentials** are set correctly
3. **Check image name** doesn't have invalid characters

---

## 🎯 Next Steps

### Week 1 Goals:
- [ ] Get simple pipeline working
- [ ] Make a code change and see it trigger
- [ ] Understand what each stage does
- [ ] Fix at least one pipeline error

### Week 2 Goals:
- [ ] Add Docker build stage
- [ ] Push to Docker Hub
- [ ] Add more test coverage
- [ ] Optimize build time

### Week 3 Goals:
- [ ] Deploy to Kubernetes
- [ ] Add environment-specific deployments
- [ ] Set up monitoring
- [ ] Document your pipeline

---

## 📝 Customization

### Change Java Version:
Edit `.github/workflows/ci-cd.yml`:
```yaml
java-version: '17'  # Change to '11' or '21'
```

### Change Branch:
Edit the `on:` section:
```yaml
on:
  push:
    branches: [ main, develop ]  # Add your branches
```

### Add More Steps:
Add steps in the `steps:` section:
```yaml
- name: Your Custom Step
  run: echo "Hello from GitHub Actions!"
```

---

## 🎓 Learning Resources

- [GitHub Actions Documentation](https://docs.github.com/en/actions)
- [GitHub Actions Marketplace](https://github.com/marketplace?type=actions)
- [YAML Syntax Guide](https://docs.ansible.com/ansible/latest/reference_appendices/YAMLSyntax.html)

---

## ✅ Checklist

Before you start:
- [ ] Code is pushed to GitHub
- [ ] You have a GitHub account
- [ ] You understand basic Git commands

To get started:
- [ ] Choose simple or complete pipeline
- [ ] Push workflow file to GitHub
- [ ] Go to Actions tab
- [ ] Watch it run!

To advance:
- [ ] Set up Docker Hub secrets
- [ ] Configure SonarCloud (optional)
- [ ] Set up Kubernetes deployment
- [ ] Add notifications

---

## 🚀 You're Ready!

1. **Start with the simple pipeline** - Get it working first
2. **Make a change** - See it trigger automatically
3. **Learn from errors** - Each error teaches you something
4. **Gradually add features** - Don't try to do everything at once

**Remember:** Getting something working is better than perfect planning! 🎉

---

*Questions? Check the error messages - they usually tell you what's wrong!*

