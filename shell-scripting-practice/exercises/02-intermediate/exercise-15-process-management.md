# Exercise 2.5: Process Management and Automation

## Objective
Learn to manage processes, check status, and automate process operations.

## Requirements
Write a script that:
1. Checks if a process is running by name
2. Starts a process if not running
3. Stops a process gracefully
4. Restarts a process
5. Monitors process health (CPU, memory usage)
6. Kills hung processes (after timeout)
7. Provides process status dashboard

## Example Usage
```bash
./process-manager.sh status nginx
./process-manager.sh start nginx
./process-manager.sh stop nginx
./process-manager.sh restart nginx
./process-manager.sh monitor nginx --max-cpu 80
```

## Example Output
```
Process: nginx
Status: Running
PID: 1234
CPU: 2.5%
Memory: 45MB
Uptime: 2d 5h 30m
```

## Hints
- Use `pgrep` or `ps` to find processes
- Use `kill` with signals (TERM, KILL)
- Use `nohup` or `systemd` for service management
- Use `timeout` for hung process detection
- Parse `/proc/PID/` for detailed info

## Learning Points
- Process identification
- Signal handling
- Process lifecycle management
- Health monitoring
- Service automation


