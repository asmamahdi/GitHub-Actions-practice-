# Exercise 3.11: SSL/TLS Certificate Management

## Objective
Automate certificate management: generation, renewal, validation, and deployment.

## Requirements
Write a script that:
1. Generates SSL certificates (self-signed or Let's Encrypt)
2. Checks certificate expiration dates
3. Automates certificate renewal
4. Validates certificate configuration
5. Deploys certificates to servers
6. Tests certificate installation
7. Sends alerts for expiring certificates

## Example Usage
```bash
./cert-manager.sh generate --domain example.com --type letsencrypt
./cert-manager.sh check-expiry --domain example.com
./cert-manager.sh renew --domain example.com --auto
./cert-manager.sh deploy --domain example.com --server web1
```

## Example Output
```
Certificate Management
======================
Checking certificates...

Domain: example.com
  Status: Valid
  Issuer: Let's Encrypt
  Valid from: 2024-01-01
  Expires: 2024-04-01 (76 days remaining)
  Status: OK

Domain: api.example.com
  Status: Valid
  Expires: 2024-03-15 (45 days remaining)
  Status: OK

Domain: old.example.com
  Status: Expiring soon
  Expires: 2024-02-01 (15 days remaining)
  Action: Renewal recommended

Renewing certificate: old.example.com
  Generating new certificate... OK
  Validating... OK
  Deploying to servers... OK
  Restarting services... OK
  Status: Renewed successfully
```

## Hints
- Use `openssl` for certificate operations
- Use `certbot` for Let's Encrypt
- Parse certificate dates with `openssl x509`
- Implement renewal scheduling
- Use `scp` or `rsync` for deployment
- Test with `openssl s_client`

## Learning Points
- Certificate lifecycle management
- Automated renewal
- Certificate validation
- Deployment automation
- Expiration monitoring


