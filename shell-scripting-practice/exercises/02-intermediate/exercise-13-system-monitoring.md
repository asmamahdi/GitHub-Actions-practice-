# Exercise 2.3: System Resource Monitoring

## Objective
Create a system monitoring script that checks CPU, memory, disk, and network.

## Requirements
Write a script that:
1. Monitors CPU usage (current and average)
2. Checks memory usage (used, free, percentage)
3. Monitors disk usage (all mounted filesystems)
4. Checks network connectivity
5. Alerts if any metric exceeds thresholds
6. Runs continuously with configurable interval
7. Logs metrics to a file with timestamps

## Example Output
```
System Monitor - 2024-01-15 14:30:00
=====================================
CPU Usage: 45.2% (Average: 42.1%)
Memory: 6.2G / 16G (38.8% used)
Disk Usage:
  /: 45G / 100G (45%)
  /home: 120G / 500G (24%)
Network: Connected (ping: 12ms)

Status: OK
```

## Thresholds (configurable)
- CPU: > 80% = WARNING, > 90% = CRITICAL
- Memory: > 80% = WARNING, > 90% = CRITICAL
- Disk: > 80% = WARNING, > 90% = CRITICAL

## Hints
- Use `top`, `vmstat`, or `/proc/stat` for CPU
- Use `free` or `/proc/meminfo` for memory
- Use `df -h` for disk usage
- Use `ping` for network check
- Use `sleep` for intervals
- Use `trap` to handle Ctrl+C gracefully

## Learning Points
- System monitoring commands
- Threshold-based alerting
- Continuous monitoring loops
- Signal handling
- Logging with timestamps


