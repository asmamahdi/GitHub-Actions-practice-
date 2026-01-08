# Exercise 3.13: Service Discovery and Registration

## Objective
Automate service discovery, registration, and health monitoring in distributed systems.

## Requirements
Write a script that:
1. Discovers services on the network
2. Registers services with a registry
3. Monitors service health
4. Updates service status
5. Deregisters failed services
6. Generates service inventory
7. Implements service discovery queries

## Example Usage
```bash
./service-discovery.sh register --service api --port 8080 --health-endpoint /health
./service-discovery.sh discover --type api
./service-discovery.sh monitor --service api --interval 30
./service-discovery.sh inventory
```

## Example Output
```
Service Discovery
=================
Registering service: api
  Endpoint: http://server1:8080
  Health check: /health
  Status: Registered

Discovering services...
  Type: api
  Found 3 instances:
    - api-001: server1:8080 (Healthy)
    - api-002: server2:8080 (Healthy)
    - api-003: server3:8080 (Unhealthy)

Monitoring service: api-003
  Health check failed
  Retries: 3/3
  Status: Deregistering

Service Inventory:
  Total services: 15
  Healthy: 12
  Unhealthy: 2
  Unknown: 1

Services by type:
  api: 3 instances
  db: 2 instances
  cache: 1 instance
```

## Hints
- Use `nmap` or `ss` for network discovery
- Use HTTP endpoints for service registration
- Implement health check loops
- Use JSON for service metadata
- Implement retry logic
- Store service registry (file or API)

## Learning Points
- Service discovery patterns
- Service registration
- Health monitoring
- Distributed systems
- Service inventory management


