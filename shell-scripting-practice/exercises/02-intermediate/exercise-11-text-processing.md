# Exercise 2.1: Text Processing with grep, sed, and awk

## Objective
Master text processing tools: grep, sed, and awk for log analysis and data extraction.

## Requirements
Write a script that processes a log file and:
1. Extracts all ERROR lines using grep
2. Counts occurrences of each error type
3. Replaces IP addresses with "REDACTED" using sed
4. Extracts and displays timestamp, log level, and message using awk
5. Generates a summary report

## Sample Log File (create in resources/)
```
2024-01-15 10:30:45 [INFO] User 192.168.1.100 logged in
2024-01-15 10:31:12 [ERROR] Database connection failed
2024-01-15 10:32:00 [WARN] High memory usage detected
2024-01-15 10:33:22 [ERROR] Authentication failed for 10.0.0.5
2024-01-15 10:34:10 [INFO] Backup completed successfully
```

## Example Output
```
Error Summary:
  Database connection failed: 1
  Authentication failed: 1

Redacted Log:
2024-01-15 10:30:45 [INFO] User REDACTED logged in
...

Parsed Entries:
Timestamp: 2024-01-15 10:30:45 | Level: INFO | Message: User logged in
...
```

## Hints
- `grep -E` for extended regex
- `sed 's/pattern/replacement/g'` for substitution
- `awk '{print $1, $2}'` for field extraction
- Use regex patterns for IP addresses
- Combine tools with pipes

## Learning Points
- grep patterns and options
- sed substitution and editing
- awk field processing
- Regular expressions
- Text processing pipelines


