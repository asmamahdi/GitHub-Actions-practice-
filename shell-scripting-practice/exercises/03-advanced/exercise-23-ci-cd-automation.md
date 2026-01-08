# Exercise 3.3: CI/CD Pipeline Automation

## Objective
Create scripts to automate CI/CD tasks: testing, building, and deployment.

## Requirements
Write a CI/CD automation script that:
1. Runs test suites and reports results
2. Builds application artifacts
3. Runs code quality checks (linting, security scans)
4. Tags and versions releases
5. Deploys to different environments
6. Implements rollback mechanism
7. Sends notifications on success/failure

## Example Usage
```bash
./cicd.sh test
./cicd.sh build --version 1.2.3
./cicd.sh deploy --env staging
./cicd.sh full-pipeline --version 1.2.3 --env production
```

## Example Output
```
CI/CD Pipeline Started
=====================
[1/5] Running tests...
  Unit tests: 150/150 passed
  Integration tests: 45/45 passed
  Status: OK

[2/5] Code quality checks...
  Linting: OK
  Security scan: 2 warnings
  Status: OK

[3/5] Building artifacts...
  Version: 1.2.3
  Artifact: app-1.2.3.tar.gz
  Status: OK

[4/5] Deploying to staging...
  Deployment: OK
  Health check: OK
  Status: OK

[5/5] Sending notifications...
  Status: OK

Pipeline completed successfully
```

## Hints
- Use exit codes for test results
- Use `git tag` for versioning
- Use environment-specific configs
- Implement health checks after deployment
- Use `curl` or `sendmail` for notifications
- Store deployment history

## Learning Points
- CI/CD pipeline automation
- Test automation
- Build automation
- Deployment strategies
- Rollback procedures


