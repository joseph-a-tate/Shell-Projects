#!/bin/bash

# This script prints the given file contents to the screen.
if [ $# -eq 0 ]; then
    echo "No file provided. Usage: $0 <filename>"
    exit 1
fi

filename="$1"
if [ ! -f "$filename" ]; then
    echo "File '$filename' does not exist."
    exit 1
fi

while IFS= read -r line; do
    echo "$line"
done < "$filename"

