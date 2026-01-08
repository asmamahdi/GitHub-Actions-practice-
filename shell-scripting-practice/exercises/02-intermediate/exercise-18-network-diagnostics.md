# Exercise 2.8: Network Diagnostics and Testing

## Objective
Create network diagnostic tools for troubleshooting connectivity issues.

## Requirements
Write a script that:
1. Tests connectivity to multiple hosts
2. Measures ping latency
3. Tests port connectivity
4. Checks DNS resolution
5. Traceroutes to target hosts
6. Generates network health report
7. Tests bandwidth (if tools available)

## Example Usage
```bash
./network-diagnostics.sh --hosts google.com,github.com,8.8.8.8
./network-diagnostics.sh --port-check 80,443,22
```

## Example Output
```
Network Diagnostics Report
==========================
Host: google.com
  DNS: OK (142.250.191.14)
  Ping: OK (12ms average)
  Port 80: OK
  Port 443: OK
  Traceroute: 5 hops

Host: github.com
  DNS: OK (140.82.121.3)
  Ping: OK (45ms average)
  Port 22: OK
  Port 443: OK

Overall Status: Healthy
```

## Hints
- Use `ping -c` for connectivity
- Use `nc` or `telnet` for port checks
- Use `nslookup` or `dig` for DNS
- Use `traceroute` for path analysis
- Use `timeout` for hanging connections
- Parse output for statistics

## Learning Points
- Network testing commands
- Connectivity diagnostics
- Port scanning basics
- DNS troubleshooting
- Network reporting


