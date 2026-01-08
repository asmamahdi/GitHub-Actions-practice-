# Exercise 1.2: User Input and Validation

## Objective
Learn to read user input, validate it, and provide feedback.

## Requirements
Write a script that:
1. Prompts the user for their name
2. Prompts for their age
3. Validates that age is a number and between 1-120
4. Displays a personalized greeting with age information
5. Handles invalid input gracefully

## Example Interaction
```
Enter your name: Asma
Enter your age: 25
Hello, Asma! You are 25 years old.
```

## Error Cases to Handle
- Empty input
- Non-numeric age
- Age out of valid range (1-120)
- Negative numbers

## Hints
- Use `read -p` for prompts
- Use regex or numeric checks for validation
- Use `if-else` for conditional logic
- Consider using `[[ ]]` for pattern matching

## Learning Points
- Reading user input with `read`
- Input validation techniques
- Conditional statements
- Error handling basics

## Testing
Test with valid and invalid inputs:
- Valid: "Asma", "25"
- Invalid: "", "abc", "150", "-5"


