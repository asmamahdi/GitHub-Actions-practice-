# Exercise 3.8: Application Health Checks and Monitoring

## Objective
Create comprehensive health check scripts for applications and services.

## Requirements
Write a health check script that:
1. Checks application endpoints (HTTP/HTTPS)
2. Validates response times and status codes
3. Checks database connectivity
4. Verifies disk space and memory
5. Tests external service dependencies
6. Generates health status dashboard
7. Implements alerting for failures

## Example Usage
```bash
./health-check.sh --app myapp --endpoint https://api.example.com
./health-check.sh --full --output json
./health-check.sh --monitor --interval 60
```

## Example Output
```
Health Check Report
===================
Application: myapp
Timestamp: 2024-01-15 14:30:00

[✓] Application Endpoint
  URL: https://api.example.com/health
  Status: 200 OK
  Response time: 45ms
  Status: Healthy

[✓] Database
  Connection: OK
  Query time: 12ms
  Status: Healthy

[✓] Disk Space
  Usage: 45% (45GB / 100GB)
  Status: Healthy

[✗] External Service
  Service: payment-gateway
  Status: Timeout (5s)
  Status: Unhealthy

[✓] Memory
  Usage: 60% (6GB / 10GB)
  Status: Healthy

Overall Status: Degraded
  Healthy: 4/5
  Unhealthy: 1/5
```

## Hints
- Use `curl` with timeout for HTTP checks
- Use database CLI tools for DB checks
- Use `df` and `free` for resource checks
- Implement retry logic
- Use exit codes for automation
- Format output for dashboards

## Learning Points
- Health check patterns
- Service monitoring
- Dependency checking
- Alerting strategies
- Status reporting


