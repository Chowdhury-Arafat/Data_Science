#!/bin/bash

# Display the current directory
pwd

# List the contents of the current directory
ls -l

# Create a directory and navigate into it
mkdir -p data_science_homework
cd data_science_homework

# Create empty text files
touch data1.txt data2.txt data3.txt

# Add text to each file
echo "Data Science is fun!" > data1.txt
echo "Linux is powerful." > data2.txt
echo "Shell scripting saves time." > data3.txt

# Display the contents of each file
cat data1.txt
cat data2.txt
cat data3.txt

# Combine all files into one
cat data1.txt data2.txt data3.txt > combined_data.txt

# Display the directory tree structure
tree ..

# Count lines, words, and characters in the combined file
wc combined_data.txt

# List the final directory contents
ls -l
