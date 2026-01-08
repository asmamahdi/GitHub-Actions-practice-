# Exercise 1.4: Working with Loops

## Objective
Master for loops, while loops, and loop control.

## Requirements
Write a script that:
1. Counts from 1 to a user-specified number
2. For each number, checks if it's even or odd
3. Calculates the sum of all numbers
4. Displays a multiplication table (1-10) for a given number
5. Uses both `for` and `while` loops

## Example Output
```
Enter a number: 5
Counting: 1 (odd), 2 (even), 3 (odd), 4 (even), 5 (odd)
Sum: 15

Enter a number for multiplication table: 7
7 x 1 = 7
7 x 2 = 14
...
7 x 10 = 70
```

## Hints
- Use `for i in {1..$n}` or `for ((i=1; i<=n; i++))`
- Use modulo operator `%` for even/odd check
- Use `while` loop for the multiplication table
- Use `$((expression))` for arithmetic

## Learning Points
- For loops (different syntaxes)
- While loops
- Arithmetic operations
- Loop control and iteration

## Testing
Test with various numbers: 0, 1, 10, 100


