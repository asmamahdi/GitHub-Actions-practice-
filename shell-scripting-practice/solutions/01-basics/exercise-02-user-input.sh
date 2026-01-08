#!/bin/bash
# Exercise 1.2: User Input and Validation
# Solution

# Function to validate age
validate_age() {
    local age=$1
    
    # Check if age is empty
    if [[ -z "$age" ]]; then
        echo "Error: Age cannot be empty"
        return 1
    fi
    
    # Check if age is a number
    if ! [[ "$age" =~ ^[0-9]+$ ]]; then
        echo "Error: Age must be a number"
        return 1
    fi
    
    # Check if age is in valid range
    if [[ $age -lt 1 ]] || [[ $age -gt 120 ]]; then
        echo "Error: Age must be between 1 and 120"
        return 1
    fi
    
    return 0
}

# Prompt for name
read -p "Enter your name: " name

# Validate name is not empty
if [[ -z "$name" ]]; then
    echo "Error: Name cannot be empty"
    exit 1
fi

# Prompt for age
read -p "Enter your age: " age

# Validate age
if ! validate_age "$age"; then
    exit 1
fi

# Display greeting
echo "Hello, $name! You are $age years old."


