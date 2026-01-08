# Exercise 3.2: Kubernetes Operations Automation

## Objective
Automate Kubernetes operations: deployments, scaling, and health checks.

## Requirements
Write a script that:
1. Deploys applications to Kubernetes
2. Scales deployments up/down
3. Checks pod status and health
4. Retrieves pod logs
5. Restarts failed pods
6. Describes resources (pods, services, deployments)
7. Implements rolling updates

## Example Usage
```bash
./k8s-manager.sh deploy app.yaml --namespace production
./k8s-manager.sh scale myapp --replicas 5
./k8s-manager.sh status --namespace production
./k8s-manager.sh logs myapp --tail 100
./k8s-manager.sh restart myapp
```

## Example Output
```
Deploying application...
  Namespace: production
  Deployment: myapp
  Status: Deployed
  Pods: 3/3 Running

Scaling deployment:
  Current: 3 replicas
  Target: 5 replicas
  Status: Scaling...
  Result: 5/5 Running

Pod Status:
  myapp-7d4f8b9c-abc123: Running (Ready: 1/1)
  myapp-7d4f8b9c-def456: Running (Ready: 1/1)
  myapp-7d4f8b9c-ghi789: Pending

Restarting failed pods...
  2 pods restarted
```

## Hints
- Use `kubectl apply` for deployments
- Use `kubectl scale` for scaling
- Use `kubectl get pods` for status
- Use `kubectl logs` for log retrieval
- Use `kubectl delete pod` for restarts
- Parse JSON output with `jq`

## Learning Points
- Kubernetes CLI operations
- Deployment automation
- Pod management
- Scaling strategies
- Health monitoring


