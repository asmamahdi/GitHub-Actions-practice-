# Exercise 2.7: Automated File Cleanup

## Objective
Create a script to clean up old files, logs, and temporary data safely.

## Requirements
Write a cleanup script that:
1. Finds files older than specified days
2. Finds files larger than specified size
3. Cleans temporary directories
4. Rotates log files
5. Provides dry-run mode (preview without deleting)
6. Creates deletion log
7. Supports exclude patterns
8. Calculates space freed

## Example Usage
```bash
./cleanup.sh --older-than 30 --path /var/log
./cleanup.sh --larger-than 100M --path /tmp
./cleanup.sh --dry-run  # Preview only
```

## Example Output
```
Cleanup Report
==============
Scanning /var/log...
Found 150 files older than 30 days
Total size: 2.5GB
Files to delete:
  - /var/log/app.log.2023-12-01 (50MB)
  - /var/log/app.log.2023-12-02 (50MB)
  ...

Dry-run mode: No files deleted
Run without --dry-run to delete
```

## Hints
- Use `find -mtime` for age-based search
- Use `find -size` for size-based search
- Use `du` to calculate sizes
- Implement confirmation prompts
- Use `rm` carefully with proper checks

## Learning Points
- File age and size filtering
- Safe deletion practices
- Dry-run implementation
- Space calculation
- Logging deletions


