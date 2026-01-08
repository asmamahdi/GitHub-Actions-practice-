# Exercise 3.1: Docker Container Management

## Objective
Automate Docker operations: build, deploy, monitor, and clean up containers.

## Requirements
Write a script that:
1. Builds Docker images from Dockerfile
2. Runs containers with proper configuration
3. Monitors container health and resource usage
4. Stops and removes containers
5. Cleans up unused images and volumes
6. Implements container restart policies
7. Manages container logs

## Example Usage
```bash
./docker-manager.sh build myapp:latest
./docker-manager.sh run myapp:latest --port 8080:80 --env-file .env
./docker-manager.sh status
./docker-manager.sh cleanup --remove-unused
```

## Example Output
```
Building image: myapp:latest
Step 1/5: FROM node:16... OK
...
Image built successfully

Running container: myapp-001
  Port mapping: 8080:80
  Environment: Loaded from .env
  Status: Running
  Health: Healthy

Container Status:
  myapp-001: Running (CPU: 2%, Memory: 128MB)
  myapp-002: Stopped

Cleanup:
  Removed 3 unused images
  Removed 2 stopped containers
  Freed: 1.2GB
```

## Hints
- Use `docker build` for building
- Use `docker run` with proper flags
- Use `docker ps` for status
- Use `docker stats` for monitoring
- Use `docker system prune` for cleanup
- Parse JSON output with `jq` (if available)

## Learning Points
- Docker CLI commands
- Container lifecycle management
- Resource monitoring
- Cleanup strategies
- Docker automation


