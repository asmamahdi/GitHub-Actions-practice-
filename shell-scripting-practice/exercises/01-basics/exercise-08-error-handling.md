# Exercise 1.8: Error Handling

## Objective
Learn proper error handling, exit codes, and script robustness.

## Requirements
Write a script that:
1. Sets `set -e` to exit on error (but handles it properly)
2. Takes two numbers as arguments
3. Performs division (handles division by zero)
4. Checks if arguments are provided
5. Validates arguments are numbers
6. Uses proper exit codes (0 for success, non-zero for errors)
7. Provides meaningful error messages
8. Logs errors to a log file

## Example Usage
```bash
./error-handling.sh 10 2    # Success: 5
./error-handling.sh 10 0    # Error: Division by zero
./error-handling.sh 10      # Error: Missing argument
./error-handling.sh a b     # Error: Invalid input
```

## Hints
- Use `set -e` for error handling
- Use `set -u` to catch undefined variables
- Use `set -o pipefail` for pipeline errors
- Check exit codes with `$?`
- Use `trap` for cleanup on exit
- Redirect errors: `2>&1` or `2>error.log`

## Learning Points
- Error handling strategies
- Exit codes
- Error redirection
- Input validation
- Script robustness
- Logging errors

## Testing
Test all error scenarios and verify exit codes.


