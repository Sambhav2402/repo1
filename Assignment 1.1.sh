#!/bin/bash

# Set default filename
default_filename="parking_data.csv"

# Store the current working directory
original_directory=$(pwd)

# Check if a filename is provided, otherwise use the default
if [ "$#" -eq 0 ]; then
    echo "No filename provided. Using default: $default_filename"
    filename=$default_filename
else
    filename=$1
fi

# Check if the file exists
#[ -f "$filename" ] || { echo "Error: File '$filename' not found."; exit 1; }

# Navigate to the directory containing the file
#file_directory=$(dirname "$filename")
#cd "$file_directory" || { echo "Error: Unable to navigate to the directory."; exit 1; }

# print all types of parking infractoins
#echo "Processing file: $filename"

#cut -d, -f4 "$filename" | sort | uniq > infraction1.csv


# Return to the original directory
#cd "$original_directory" || { echo "Error: Unable to return to the original directory."; exit 1; }
