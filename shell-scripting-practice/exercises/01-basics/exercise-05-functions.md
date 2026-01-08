# Exercise 1.5: Functions and Modularity

## Objective
Learn to create and use functions, pass parameters, and return values.

## Requirements
Write a script with the following functions:
1. `greet_user(name)` - Greets a user
2. `calculate_area(length, width)` - Calculates rectangle area
3. `check_number(num)` - Returns "even" or "odd"
4. `is_prime(num)` - Checks if a number is prime
5. Main script that uses all these functions

## Example Usage
```bash
./functions.sh
# Should demonstrate all functions
```

## Example Output
```
Greeting: Hello, Asma!
Area of rectangle (5 x 3): 15
Number 7 is: odd
Number 7 is prime: Yes
```

## Hints
- Function syntax: `function_name() { ... }`
- Access arguments with `$1`, `$2`, etc.
- Use `return` for exit codes (0-255)
- Use `echo` to return string values
- Capture function output: `result=$(function_name args)`

## Learning Points
- Function definition and syntax
- Parameter passing
- Return values and exit codes
- Function calls and output capture
- Code organization and reusability

## Testing
Test each function independently and together.


