# Exercise 1.6: Working with Arrays

## Objective
Learn to create, manipulate, and iterate over arrays.

## Requirements
Write a script that:
1. Creates an array of 5 server names
2. Displays all servers
3. Adds a new server to the array
4. Removes a server by name
5. Finds the index of a specific server
6. Sorts the array alphabetically
7. Counts the number of servers

## Example Output
```
Servers: web1 web2 db1 app1 cache1
After adding web3: web1 web2 db1 app1 cache1 web3
After removing db1: web1 web2 app1 cache1 web3
Index of app1: 2
Sorted: app1 cache1 web1 web2 web3
Total servers: 5
```

## Hints
- Array syntax: `array=(item1 item2 item3)`
- Access elements: `${array[0]}`, `${array[@]}`
- Add element: `array+=("new")`
- Remove element: `unset array[index]`
- Sort: Use external `sort` command or manual sorting
- Length: `${#array[@]}`

## Learning Points
- Array declaration and initialization
- Array indexing and access
- Adding/removing elements
- Array iteration
- Array manipulation operations

## Testing
Test with various array operations and edge cases (empty array, single element).


