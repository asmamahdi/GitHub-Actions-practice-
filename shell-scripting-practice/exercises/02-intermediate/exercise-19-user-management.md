# Exercise 2.9: User and Permission Management

## Objective
Automate user creation, permission management, and access control.

## Requirements
Write a script that:
1. Creates users from a CSV file
2. Sets up home directories with proper permissions
3. Creates user groups
4. Assigns users to groups
5. Sets up SSH keys
6. Configures sudo access
7. Validates user configuration
8. Generates user report

## Example CSV Input
```
username,groups,home_dir,sudo_access
john,developers,ops,no
jane,developers,admins,yes
bob,developers,no
```

## Example Usage
```bash
./user-manager.sh create users.csv
./user-manager.sh validate john
./user-manager.sh report
```

## Example Output
```
Creating users from users.csv...
  Creating user: john
    Groups: developers, ops
    Home: /home/john
    Sudo: No
    Status: OK
  Creating user: jane
    Groups: developers, admins
    Home: /home/jane
    Sudo: Yes
    Status: OK

User Report:
  Total users: 25
  Users with sudo: 5
  Active groups: 8
```

## Hints
- Use `useradd` or `adduser` for user creation
- Use `usermod` for modifications
- Use `groupadd` for groups
- Parse CSV with `awk` or `read`
- Use `chmod` and `chown` for permissions
- Validate with `id` and `groups` commands

## Learning Points
- User management commands
- Permission handling
- CSV processing
- System administration
- Access control


