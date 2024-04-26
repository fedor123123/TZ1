#!/bin/bash

input_dir="$1"
output_dir="$2"

files=$(find "$input_dir" -maxdepth 1 -type f)
echo "$files"

allfiles=$(find "$input_dir" -type f)
echo "$allfiles"

dirs=$(find "$input_dir" -type d)
echo "$dirs"

echo "$allfiles" | while read file; do
    cp "$file" "$output_dir"
done
