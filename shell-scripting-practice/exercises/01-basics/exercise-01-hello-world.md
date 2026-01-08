# Exercise 1.1: Hello World with Variables

## Objective
Learn basic script structure, shebang, variables, and output.

## Requirements
Write a bash script that:
1. Displays "Hello, [Your Name]!" using a variable
2. Shows the current date and time
3. Displays your current working directory
4. Shows the script's name

## Example Output
```
Hello, Asma!
Current date: 2024-01-15 14:30:45
Current directory: /home/user/projects
Script name: hello.sh
```

## Hints
- Start with `#!/bin/bash` (shebang)
- Use `$USER` or create a variable for your name
- Use `date` command for current date/time
- Use `$PWD` or `pwd` for current directory
- Use `$0` or `basename $0` for script name

## Learning Points
- Script structure and shebang
- Variable assignment and usage
- Command substitution with `$()`
- Basic output with `echo`

## Starter Template
```bash
#!/bin/bash
# Your code here
```

## Testing
Run: `bash hello.sh` or `chmod +x hello.sh && ./hello.sh`


