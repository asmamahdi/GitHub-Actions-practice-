# Exercise 1.7: Advanced Conditionals

## Objective
Master if-else statements, case statements, and logical operators.

## Requirements
Write a script that:
1. Takes a command-line argument (file path)
2. Checks file type (regular file, directory, symlink, or doesn't exist)
3. Checks file permissions (readable, writable, executable)
4. Uses a case statement to handle different file extensions (.sh, .txt, .log, .conf, other)
5. Provides appropriate actions for each file type

## Example Usage
```bash
./conditionals.sh /path/to/file.sh
./conditionals.sh /path/to/directory
./conditionals.sh /path/to/file.txt
```

## Example Output
```
File: /path/to/file.sh
Type: Regular file
Extension: .sh
Action: This is a shell script. Making it executable...
Permissions: Readable, Writable, Executable
```

## Hints
- Use `[ -f ]`, `[ -d ]`, `[ -L ]` for file type checks
- Use `[ -r ]`, `[ -w ]`, `[ -x ]` for permission checks
- Use `case` statement for extension matching
- Use `${file##*.}` to get extension
- Use `basename` and `dirname` for path manipulation

## Learning Points
- File test operators
- Permission checks
- Case statements
- String manipulation
- Path operations

## Testing
Test with various file types, permissions, and extensions.


