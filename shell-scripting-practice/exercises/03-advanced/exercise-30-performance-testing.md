# Exercise 3.10: Performance Testing Automation

## Objective
Automate performance testing: load testing, stress testing, and performance monitoring.

## Requirements
Write a script that:
1. Generates load on applications
2. Monitors performance metrics during tests
3. Collects response times and throughput
4. Identifies performance bottlenecks
5. Generates performance reports
6. Compares performance across versions
7. Implements performance regression detection

## Example Usage
```bash
./performance-test.sh --url https://api.example.com --concurrent 100 --duration 300
./performance-test.sh --compare --baseline baseline.json --current current.json
```

## Example Output
```
Performance Test Results
========================
Target: https://api.example.com
Duration: 5 minutes
Concurrent users: 100

Test Results:
  Total requests: 15,000
  Successful: 14,850 (99%)
  Failed: 150 (1%)
  
Performance Metrics:
  Average response time: 125ms
  Median response time: 98ms
  P95 response time: 245ms
  P99 response time: 450ms
  Requests per second: 50 RPS
  Throughput: 2.5 MB/s

Error Analysis:
  Timeout errors: 120
  Server errors: 30

Bottlenecks:
  [HIGH] Database queries: 45ms avg
  [MEDIUM] External API calls: 30ms avg

Status: Performance acceptable
```

## Hints
- Use `curl` or `ab` (Apache Bench) for load generation
- Use `awk` to calculate percentiles
- Monitor system resources during tests
- Parse and aggregate metrics
- Implement comparison logic
- Generate visual reports (if possible)

## Learning Points
- Load testing automation
- Performance metrics collection
- Bottleneck identification
- Performance regression testing
- Test result analysis


