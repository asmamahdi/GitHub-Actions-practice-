# Exercise 1.9: Command Substitution and Pipes

## Objective
Master command substitution, piping, and combining commands.

## Requirements
Write a script that:
1. Gets the current date in YYYY-MM-DD format
2. Counts the number of files in the current directory
3. Gets the largest file in a directory
4. Gets the top 5 processes by CPU usage
5. Counts lines, words, and characters in a file
6. Finds all .log files modified in the last 24 hours
7. Combines multiple commands using pipes

## Example Output
```
Current date: 2024-01-15
Files in current directory: 42
Largest file: large-file.tar.gz (1.2G)
Top 5 processes:
  PID    CPU%  COMMAND
  1234   15.2  chrome
  ...
Lines in file.txt: 1500
Words: 8500
Characters: 45000
Recent log files: app.log, error.log
```

## Hints
- Use `$(command)` or `` `command` `` for substitution
- Use pipes `|` to chain commands
- Use `find` with `-mtime` for time-based searches
- Use `ps`, `sort`, `head` for process info
- Use `wc` for word/line counts
- Use `du` and `sort` for file sizes

## Learning Points
- Command substitution syntax
- Piping commands
- Combining utilities
- Text processing pipelines
- Process management commands

## Testing
Test with various directories and files.


