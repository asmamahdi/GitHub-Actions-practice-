# Exercise 3.14: Cloud Cost Optimization

## Objective
Automate cloud resource monitoring and cost optimization recommendations.

## Requirements
Write a script that:
1. Lists cloud resources (instances, volumes, snapshots)
2. Identifies unused or underutilized resources
3. Calculates resource costs
4. Generates cost optimization recommendations
5. Implements resource cleanup (with confirmation)
6. Monitors resource usage trends
7. Generates cost reports

## Example Usage
```bash
./cost-optimizer.sh analyze --provider aws
./cost-optimizer.sh recommendations
./cost-optimizer.sh cleanup --dry-run
./cost-optimizer.sh report --month january
```

## Example Output
```
Cloud Cost Analysis
===================
Provider: AWS
Period: Last 30 days

Resource Inventory:
  EC2 Instances: 25
    Running: 20
    Stopped: 5
  EBS Volumes: 45
    Attached: 30
    Unattached: 15
  Snapshots: 120
    Old (>30 days): 80

Cost Analysis:
  Current monthly cost: $2,450
  Potential savings: $580 (24%)

Optimization Recommendations:
  [HIGH] Stop unused instances (5 instances)
    Savings: $300/month
  
  [MEDIUM] Delete unattached volumes (15 volumes)
    Savings: $150/month
  
  [MEDIUM] Clean up old snapshots (80 snapshots)
    Savings: $80/month
  
  [LOW] Right-size underutilized instances (3 instances)
    Savings: $50/month

Cleanup Preview (dry-run):
  Would stop: 5 instances
  Would delete: 15 volumes
  Would delete: 80 snapshots
  Estimated savings: $580/month
```

## Hints
- Use cloud CLI tools (AWS CLI, etc.)
- Parse JSON output with `jq`
- Calculate costs from resource specs
- Implement dry-run mode
- Use resource tags for organization
- Generate actionable recommendations

## Learning Points
- Cloud resource management
- Cost analysis
- Resource optimization
- Unused resource detection
- Cost reporting


