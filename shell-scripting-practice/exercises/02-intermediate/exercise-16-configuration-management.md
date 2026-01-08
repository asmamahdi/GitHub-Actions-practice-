# Exercise 2.6: Configuration File Management

## Objective
Automate configuration file updates, templating, and validation.

## Requirements
Write a script that:
1. Reads configuration from a template file
2. Replaces placeholders with actual values
3. Validates configuration syntax
4. Creates backups before modification
5. Supports multiple environments (dev, staging, prod)
6. Generates configuration from key-value pairs
7. Validates required fields

## Example Template
```
# nginx.conf.template
server {
    listen ${PORT};
    server_name ${DOMAIN};
    root ${DOCUMENT_ROOT};
}
```

## Example Usage
```bash
./config-manager.sh generate nginx.conf.template \
  --env prod \
  --set PORT=443 \
  --set DOMAIN=example.com \
  --set DOCUMENT_ROOT=/var/www
```

## Example Output
```
Reading template: nginx.conf.template
Replacing variables...
Validating configuration...
Backup created: nginx.conf.backup.2024-01-15
Configuration generated: nginx.conf
Validation: OK
```

## Hints
- Use `envsubst` or `sed` for variable substitution
- Use `source` or `.` to load config files
- Use `nginx -t` or similar for validation
- Use associative arrays for key-value storage
- Implement rollback on validation failure

## Learning Points
- Configuration templating
- Environment management
- Configuration validation
- Safe updates with rollback
- Template processing


