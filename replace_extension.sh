#!/bin/bash

# Usage: ./replace_extension.sh [old_extension] [new_extension] [filename]

old_extension=$1
new_extension=$2
filename=$3

# Check if the filename has an extension
if [[ $filename == *"."* ]]; then
  # Replace the old extension with the new one
  new_filename="${filename%.$old_extension}.$new_extension"
else
  # Add the new extension to the filename
  new_filename="$filename.$new_extension"
fi

# Rename the file
mv "$filename" "$new_filename"
echo "File renamed to: $new_filename"

exit 0
