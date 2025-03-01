#!/bin/bash

# Create the main directory named "ten"
mkdir -p ten

# Navigate into the "ten" directory
cd ten

# Loop to create ten subdirectories and four files in each
for i in $(seq -w 1 10); do
    dir_name="dir$i"
    mkdir -p "$dir_name"  # Create subdirectory

    # Create files inside the subdirectory
    for j in $(seq 1 4); do
        file_path="$dir_name/file$j.txt"
        
        # Write the corresponding digit 'j' for 'j' lines in the file
        for k in $(seq 1 $j); do
            echo "$j" >> "$file_path"
        done
    done
done
