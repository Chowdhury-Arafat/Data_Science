#!/bin/bash

# Check if the correct number of arguments is provided
if [ $# -ne 2 ]; then
    echo "Usage: $0 <filename> <keyword>"
    exit 1
fi

# Assign arguments to variables
FILE=$1
KEYWORD=$2

# Check if the file exists
if [ ! -f "$FILE" ]; then
    echo "Error: File '$FILE' not found."
    exit 1
fi

# Extract rows with the keyword, sort them and remove duplicates
grep "$KEYWORD" "$FILE" | sort | uniq > filtered_sorted.txt

