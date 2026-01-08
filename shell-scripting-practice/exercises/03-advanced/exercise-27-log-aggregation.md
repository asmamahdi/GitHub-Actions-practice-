# Exercise 3.7: Log Aggregation and Centralized Logging

## Objective
Create scripts to collect, aggregate, and process logs from multiple sources.

## Requirements
Write a script that:
1. Collects logs from multiple servers
2. Aggregates logs by time, source, or type
3. Filters and processes log entries
4. Sends logs to centralized storage
5. Implements log rotation
6. Generates log summaries
7. Alerts on critical log patterns

## Example Usage
```bash
./log-aggregator.sh collect --servers server1,server2,server3
./log-aggregator.sh aggregate --time-range "last 24h"
./log-aggregator.sh alert --pattern "ERROR|CRITICAL"
```

## Example Output
```
Log Aggregation
================
Collecting logs from 3 servers...

Server: server1
  Logs collected: 15,000 entries
  Size: 45MB
  Status: OK

Server: server2
  Logs collected: 12,000 entries
  Size: 38MB
  Status: OK

Aggregating logs...
  Total entries: 42,000
  Time range: 2024-01-15 00:00 - 23:59
  Errors: 150 (0.36%)
  Warnings: 850 (2.02%)

Alerts:
  [CRITICAL] Database connection failures: 25
  [HIGH] Authentication failures: 45
  [MEDIUM] High memory usage: 12

Logs stored: /var/log/aggregated/2024-01-15.log
```

## Hints
- Use `rsync` or `scp` for log collection
- Use `find` with time filters
- Use `grep` and `awk` for processing
- Implement compression for storage
- Use `tail -f` for real-time monitoring
- Parse timestamps for time-based operations

## Learning Points
- Log collection strategies
- Multi-source aggregation
- Log processing pipelines
- Centralized logging
- Alert mechanisms


