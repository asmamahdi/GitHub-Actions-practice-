# Exercise 3.6: Security Scanning and Compliance

## Objective
Automate security scanning, vulnerability detection, and compliance checks.

## Requirements
Write a script that:
1. Scans for security vulnerabilities
2. Checks for exposed secrets/credentials
3. Validates SSL/TLS certificates
4. Performs port scanning
5. Checks file permissions
6. Generates security reports
7. Implements compliance checks (PCI, HIPAA basics)

## Example Usage
```bash
./security-scanner.sh scan --path /var/www
./security-scanner.sh check-secrets --repo /path/to/repo
./security-scanner.sh validate-certs --domain example.com
./security-scanner.sh compliance --type pci
```

## Example Output
```
Security Scan Report
====================
Scanning: /var/www

Vulnerabilities:
  [HIGH] Outdated package: openssl 1.0.2
  [MEDIUM] Weak permissions: /var/www/config.php (644)
  [LOW] Exposed backup file: backup.tar.gz

Secrets Check:
  Found 2 potential secrets:
    - config.php: API key pattern detected
    - .env: Database password

SSL Certificate Check:
  Domain: example.com
  Valid until: 2024-12-31
  Status: Valid
  Grade: A

Compliance:
  PCI-DSS: 8/12 checks passed
  Recommendations: 4 items

Overall Status: Needs Attention
```

## Hints
- Use `grep` with patterns for secret detection
- Use `openssl s_client` for certificate checks
- Use `find` with permission checks
- Use package managers for vulnerability checks
- Implement severity levels
- Generate actionable reports

## Learning Points
- Security scanning techniques
- Vulnerability detection
- Secret management
- Certificate validation
- Compliance automation


