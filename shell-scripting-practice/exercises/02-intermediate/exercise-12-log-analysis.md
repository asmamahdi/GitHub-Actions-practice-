# Exercise 2.2: Log Analysis and Reporting

## Objective
Create a comprehensive log analysis script for DevOps monitoring.

## Requirements
Write a script that analyzes application logs and:
1. Counts total log entries by level (INFO, WARN, ERROR, DEBUG)
2. Finds the most frequent error messages
3. Identifies peak activity hours
4. Extracts unique IP addresses
5. Calculates error rate percentage
6. Generates an HTML report

## Sample Log Format
```
2024-01-15 14:30:45 [ERROR] [192.168.1.100] Database timeout
2024-01-15 14:31:12 [INFO] [10.0.0.5] Request processed
2024-01-15 14:32:00 [WARN] [192.168.1.100] Slow query detected
```

## Example Output
```
Log Analysis Report
===================
Total entries: 1000
  INFO: 750 (75%)
  WARN: 150 (15%)
  ERROR: 100 (10%)
  DEBUG: 0 (0%)

Most frequent errors:
  1. Database timeout (45 occurrences)
  2. Connection refused (30 occurrences)

Peak hours: 14:00-15:00 (250 entries)
Unique IPs: 15
Error rate: 10%
```

## Hints
- Use `grep -c` for counting
- Use `sort | uniq -c | sort -rn` for frequency
- Extract hours with `awk` or `cut`
- Use `sort -u` for unique values
- Generate HTML with echo and heredoc

## Learning Points
- Log parsing techniques
- Statistical analysis
- Report generation
- Data aggregation
- HTML generation


