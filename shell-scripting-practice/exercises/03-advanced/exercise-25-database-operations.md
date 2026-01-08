# Exercise 3.5: Database Backup and Maintenance

## Objective
Automate database operations: backups, restores, migrations, and maintenance.

## Requirements
Write a script that:
1. Backs up databases (MySQL/PostgreSQL)
2. Restores databases from backups
3. Runs database migrations
4. Performs database health checks
5. Cleans up old backups
6. Exports/imports data
7. Monitors database performance

## Example Usage
```bash
./db-manager.sh backup --db myapp --type full
./db-manager.sh restore --db myapp --backup backup_2024-01-15.sql
./db-manager.sh migrate --db myapp --version 1.2.3
./db-manager.sh health-check --db myapp
```

## Example Output
```
Database Operations
===================
Backing up database: myapp
  Type: Full backup
  Size: 250MB
  Location: /backups/myapp_2024-01-15_14-30-00.sql
  Status: OK

Restoring database: myapp
  Backup: backup_2024-01-15.sql
  Status: Restored
  Verification: OK

Running migrations...
  Current version: 1.2.2
  Target version: 1.2.3
  Migrations applied: 3
  Status: OK

Health Check:
  Connections: 45/100
  Query time: 12ms (avg)
  Replication: OK
  Status: Healthy
```

## Hints
- Use `mysqldump` or `pg_dump` for backups
- Use `mysql` or `psql` for restores
- Implement backup verification
- Use connection pooling checks
- Monitor slow queries
- Implement backup rotation

## Learning Points
- Database backup strategies
- Restore procedures
- Migration automation
- Database monitoring
- Maintenance tasks


