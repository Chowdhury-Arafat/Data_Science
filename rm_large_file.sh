#!/bin/bash

# Check if the correct number of arguments is provided
if [ $# -ne 2 ]; then
    echo "Usage: $0 <directory> <size_in_bytes>"
    exit 1
fi

# Assign arguments to variables
DIR=$1
SIZE=$2

# Check if the directory exists
if [ ! -d "$DIR" ]; then
    echo "Error: Directory '$DIR' not found."
    exit 1
fi

# Find and delete files larger than the specified size
find "$DIR" -type f -size +"$SIZE"c -exec rm -v {} \;

# Print confirmation
echo "Deleted all files larger than $SIZE bytes in '$DIR'."
