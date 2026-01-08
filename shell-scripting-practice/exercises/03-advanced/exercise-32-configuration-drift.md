# Exercise 3.12: Configuration Drift Detection

## Objective
Detect and report configuration changes and drift across servers.

## Requirements
Write a script that:
1. Takes baseline configuration snapshots
2. Compares current configs with baselines
3. Detects unauthorized changes
4. Reports configuration drift
5. Implements configuration remediation
6. Tracks configuration history
7. Generates compliance reports

## Example Usage
```bash
./config-drift.sh baseline --server web1 --config /etc/nginx/nginx.conf
./config-drift.sh check --server web1
./config-drift.sh remediate --server web1 --auto
./config-drift.sh report --all-servers
```

## Example Output
```
Configuration Drift Detection
=============================
Checking server: web1

Configuration: /etc/nginx/nginx.conf
  Baseline: 2024-01-10 10:00:00
  Current: 2024-01-15 14:30:00
  Status: Drift detected

Changes detected:
  Line 45: Changed
    Baseline: worker_processes 4;
    Current: worker_processes 8;
  
  Line 120: Added
    Current: client_max_body_size 100M;
  
  Line 200: Removed
    Baseline: gzip on;

Drift Summary:
  Files changed: 1
  Lines modified: 3
  Status: Unauthorized changes detected

Remediation:
  Restoring from baseline... OK
  Status: Remediated
```

## Hints
- Use `diff` for comparison
- Store baselines with checksums
- Use `md5sum` or `sha256sum` for integrity
- Implement change tracking
- Use `git` for version control (advanced)
- Parse diff output

## Learning Points
- Configuration management
- Drift detection techniques
- Change tracking
- Remediation automation
- Compliance monitoring


