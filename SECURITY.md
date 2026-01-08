# Security Best Practices

## 🔒 Credentials Management

This project follows security best practices for handling sensitive information:

### ✅ What's Secure

1. **Jenkins Credentials Store**
   - All passwords, tokens, and keys are stored in Jenkins Credential Store
   - Never hardcoded in code or configuration files
   - Credentials are referenced by ID only (e.g., `git-PAT1`, `dockerhub`)

2. **Terraform Variables**
   - Sensitive variables are in `terraform.tfvars` (excluded from Git via `.gitignore`)
   - Only `terraform.tfvars.example` is committed (with placeholder values)

3. **SSH Keys**
   - All `.pem` and `.key` files are excluded from Git
   - Keys should be stored securely on your local machine only

4. **Environment Variables**
   - No hardcoded credentials in any code files
   - All sensitive data uses placeholders (e.g., `YOUR_DOCKERHUB_USERNAME`)

### ⚠️ What to Never Commit

- ❌ `terraform.tfvars` (contains AWS keys, IPs, etc.)
- ❌ `*.pem`, `*.key` files (SSH keys)
- ❌ `*.tfstate` files (may contain sensitive data)
- ❌ `.env` files (environment variables)
- ❌ Any file with hardcoded passwords or tokens

### 🔐 Setting Up Credentials

#### In Jenkins

1. **GitHub Personal Access Token:**
   - Go to: Manage Jenkins → Credentials → System → Global credentials
   - Add credential with ID: `git-PAT1`
   - Type: Username with password
   - Username: Your GitHub username
   - Password: Your GitHub PAT

2. **Docker Hub:**
   - Add credential with ID: `dockerhub`
   - Type: Username with password
   - Username: Your Docker Hub username
   - Password: Your Docker Hub access token (recommended over password)

3. **SonarQube:**
   - Configure in: Manage Jenkins → Configure System
   - Add SonarQube server with authentication token

#### In Terraform

1. Copy `terraform.tfvars.example` to `terraform.tfvars`
2. Fill in your values (this file is in `.gitignore`)
3. Never commit `terraform.tfvars` to Git

### 🛡️ Security Checklist

Before pushing to Git, verify:

- [ ] No passwords in any code files
- [ ] No API keys or tokens hardcoded
- [ ] `terraform.tfvars` is in `.gitignore`
- [ ] All `.pem` files are excluded
- [ ] All placeholders are used (e.g., `YOUR_DOCKERHUB_USERNAME`)
- [ ] Jenkins credentials are set up in Jenkins UI (not in code)

### 📝 Placeholders to Replace

Before using this project, replace these placeholders:

1. **Jenkinsfile:**
   - `YOUR_GITHUB_USERNAME/YOUR_REPO_NAME` - Your GitHub repository
   - `YOUR_DOCKERHUB_USERNAME` - Your Docker Hub username

2. **kubernetes/deployment.yaml:**
   - `YOUR_DOCKERHUB_USERNAME` - Your Docker Hub username

3. **pom.xml:**
   - `YOUR_SONAR_PROJECT_KEY` - Your SonarQube project key
   - `YOUR_SONAR_ORG` - Your SonarQube organization

4. **terraform.tfvars:**
   - `your-key-pair-name` - Your AWS key pair name
   - `YOUR_IP/32` - Your public IP address

### 🚨 If You Accidentally Committed Secrets

1. **Immediately rotate/revoke the exposed credentials:**
   - Change passwords
   - Regenerate tokens
   - Create new SSH keys

2. **Remove from Git history:**
   ```bash
   git filter-branch --force --index-filter \
     "git rm --cached --ignore-unmatch path/to/file" \
     --prune-empty --tag-name-filter cat -- --all
   ```

3. **Force push (if you're the only contributor):**
   ```bash
   git push origin --force --all
   ```

### 📚 Additional Resources

- [GitHub: Removing sensitive data](https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/removing-sensitive-data-from-a-repository)
- [Jenkins: Credentials Management](https://www.jenkins.io/doc/book/using/using-credentials/)
- [Terraform: Sensitive Variables](https://www.terraform.io/docs/language/values/variables.html#suppressing-values-in-cli-output)

---

**Remember: Security is everyone's responsibility. When in doubt, don't commit it!**

