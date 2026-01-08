# Exercise 3.4: Infrastructure Provisioning Scripts

## Objective
Automate infrastructure setup: servers, networking, and services.

## Requirements
Write a script that:
1. Provisions virtual machines/servers
2. Configures networking (firewall rules, ports)
3. Installs required software packages
4. Configures services (web server, database)
5. Sets up monitoring and logging
6. Validates infrastructure health
7. Supports multiple environments

## Example Usage
```bash
./provision.sh --env dev --servers 2
./provision.sh --env prod --servers 5 --with-monitoring
./provision.sh validate --env dev
```

## Example Output
```
Provisioning Infrastructure
============================
Environment: dev
Servers: 2

[1/5] Creating servers...
  server-1: Created (IP: 192.168.1.10)
  server-2: Created (IP: 192.168.1.11)

[2/5] Configuring networking...
  Firewall rules: Applied
  Ports opened: 80, 443, 22
  Status: OK

[3/5] Installing packages...
  nginx: Installed
  nodejs: Installed
  Status: OK

[4/5] Configuring services...
  nginx: Configured and started
  Status: OK

[5/5] Health check...
  All servers: Healthy
  Services: Running

Infrastructure ready
```

## Hints
- Use cloud CLI tools (AWS CLI, Azure CLI, GCP)
- Use `ssh` for remote configuration
- Use configuration management tools integration
- Implement idempotency (safe to run multiple times)
- Use templates for configurations

## Learning Points
- Infrastructure automation
- Server provisioning
- Service configuration
- Health validation
- Multi-environment support


