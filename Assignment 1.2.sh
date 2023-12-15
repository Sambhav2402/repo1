#!/bin/bash

# Check if a filename is provided
if [ "$#" -eq 0 ]; then
    echo "Usage: $0 <data_file>"
    exit 1
fi

data_file="$1"

# Check if the file exists
if [ ! -f "$data_file" ]; then
    echo "Error: File not found at '$data_file'"
    exit 1
fi

# Calculate the mean, min, and max
sum=0
count=0
min_value=$(head -n 1 "$data_file")
max_value=$(head -n 1 "$data_file")

while read -r value; do
    sum=$((sum + value))
    ((count++))

    # Check for min value
    if (( value < min_value )); then
        min_value=$value
    fi

    # Check for max value
    if (( value > max_value )); then
        max_value=$value
    fi

done < "$data_file"

# Check if there is any data in the file
if [ "$count" -eq 0 ]; then
    echo "Error: No data found in '$data_file'"
    exit 1
fi

mean=$(bc -l <<< "$sum / $count")

echo "Mean: $mean"
echo "Min: $min_value"
echo "Max: $max_value"
