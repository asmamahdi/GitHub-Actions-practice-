# Exercise 1.3: Basic File Operations

## Objective
Learn to check file existence, read files, and perform basic file operations.

## Requirements
Write a script that:
1. Takes a filename as an argument
2. Checks if the file exists
3. If it exists, displays:
   - File size
   - File permissions
   - Last modified date
   - First 5 lines of content
4. If it doesn't exist, creates it with default content
5. Handles the case where no argument is provided

## Example Usage
```bash
./file-info.sh myfile.txt
./file-info.sh nonexistent.txt  # Creates the file
./file-info.sh                   # Shows error message
```

## Hints
- Use `[ -f "$file" ]` to check file existence
- Use `stat` or `ls -l` for file info
- Use `head -n 5` for first lines
- Use `>` or `>>` for file creation
- Check `$#` for argument count

## Learning Points
- File existence checks
- File metadata commands
- Command-line arguments (`$1`, `$#`)
- File creation and writing

## Testing
Create test files and run the script with various scenarios.


