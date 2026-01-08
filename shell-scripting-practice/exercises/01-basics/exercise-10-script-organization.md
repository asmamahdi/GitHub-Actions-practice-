# Exercise 1.10: Script Organization and Best Practices

## Objective
Learn to write well-organized, maintainable scripts following best practices.

## Requirements
Refactor a messy script into a well-organized one with:
1. Proper header with script description, author, date
2. Configuration section (variables at the top)
3. Function definitions
4. Input validation function
5. Main execution logic
6. Proper comments and documentation
7. Usage/help function
8. Clean exit handling

## Starting Point (Messy Script)
```bash
#!/bin/bash
name=$1
if [ -z "$name" ]; then echo "Error"; exit 1; fi
files=$(ls)
for f in $files; do
  if [ -f "$f" ]; then
    echo "Processing $f"
    grep "$name" "$f" > /tmp/result.txt
    if [ $? -eq 0 ]; then
      echo "Found in $f"
    fi
  fi
done
```

## Requirements for Refactored Version
- Add proper structure
- Add error handling
- Add logging
- Add help/usage function
- Make it maintainable
- Add comments

## Hints
- Organize: Header → Config → Functions → Main
- Use meaningful variable names
- Add function documentation
- Use consistent indentation
- Add error checking throughout
- Create a `usage()` function

## Learning Points
- Script organization patterns
- Best practices
- Code maintainability
- Documentation
- Professional script structure

## Testing
Ensure the refactored script works identically but is more maintainable.


