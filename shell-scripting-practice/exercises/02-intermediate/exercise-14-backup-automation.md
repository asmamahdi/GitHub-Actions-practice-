# Exercise 2.4: Automated Backup Script

## Objective
Create a robust backup script with rotation, compression, and verification.

## Requirements
Write a backup script that:
1. Backs up specified directories
2. Creates timestamped backup files
3. Compresses backups (tar.gz)
4. Implements backup rotation (keep last N backups)
5. Verifies backup integrity
6. Sends backup status via email/log
7. Handles errors gracefully
8. Supports exclude patterns

## Example Usage
```bash
./backup.sh /var/www /etc/nginx --keep 7 --exclude "*.log"
```

## Example Output
```
Starting backup: 2024-01-15_14-30-00
Backing up /var/www... OK (150MB)
Backing up /etc/nginx... OK (2MB)
Compressing... OK
Verifying... OK
Removing old backups (keeping last 7)...
Backup completed successfully: backup_2024-01-15_14-30-00.tar.gz
```

## Features
- Configurable retention policy
- Exclude patterns (logs, temp files)
- Backup verification (checksum)
- Progress indication
- Detailed logging
- Error recovery

## Hints
- Use `tar` with compression options
- Use `date` for timestamps
- Use `find` with `-mtime` for rotation
- Use `md5sum` or `sha256sum` for verification
- Use `rsync` for incremental backups (advanced)

## Learning Points
- Backup strategies
- File compression
- Backup rotation
- Integrity verification
- Error handling in critical operations


