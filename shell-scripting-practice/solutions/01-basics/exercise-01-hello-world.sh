#!/bin/bash
# Exercise 1.1: Hello World with Variables
# Solution

# Get the current user's name (you can also use a variable)
NAME="${USER:-Guest}"

# Get current date and time
CURRENT_DATE=$(date '+%Y-%m-%d %H:%M:%S')

# Get current working directory
CURRENT_DIR=$(pwd)

# Get script name
SCRIPT_NAME=$(basename "$0")

# Display the information
echo "Hello, $NAME!"
echo "Current date: $CURRENT_DATE"
echo "Current directory: $CURRENT_DIR"
echo "Script name: $SCRIPT_NAME"


