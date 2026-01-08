# Exercise 4.4: Automated Capacity Planning

## Objective
Analyze resource usage trends and provide capacity planning recommendations.

## Scenario
You need to analyze current resource usage, predict future needs, and recommend scaling actions before resources are exhausted.

## Requirements
- Collect historical resource metrics
- Analyze usage trends
- Predict future requirements
- Identify capacity constraints
- Generate scaling recommendations
- Calculate cost implications
- Create capacity reports

## Example Output
```
Capacity Planning Analysis
==========================
Analysis Period: Last 90 days
Current Date: 2024-01-15

Current Resource Usage:
  CPU: 65% average (Peak: 85%)
  Memory: 70% average (Peak: 90%)
  Disk: 60% used (400GB / 1TB)
  Network: 45% of bandwidth

Trend Analysis:
  CPU: +5% per month (trending up)
  Memory: +8% per month (trending up)
  Disk: +10GB per month (trending up)
  Network: +3% per month (stable)

Projections (Next 3 months):
  CPU: Will reach 80% by March
  Memory: Will reach 94% by February (CRITICAL)
  Disk: Will reach 70% by April
  Network: Will reach 54% by April

Capacity Constraints:
  [CRITICAL] Memory will be exhausted in 1.5 months
  [WARNING] CPU will reach 80% in 2.5 months
  [INFO] Disk space adequate for 4 months

Recommendations:
  [IMMEDIATE] Add 8GB RAM to servers (Cost: $200/month)
  [URGENT] Scale CPU capacity by 25% (Cost: $150/month)
  [PLANNED] Add 500GB disk space (Cost: $50/month)

Total estimated cost: $400/month
ROI: Prevents service degradation and outages

Action Plan:
  1. Upgrade memory (Week 1)
  2. Scale CPU (Week 2)
  3. Plan disk expansion (Month 2)
```

## Learning Points
- Resource monitoring
- Trend analysis
- Capacity prediction
- Scaling recommendations
- Cost analysis
- Proactive planning


