#!/bin/bash

if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <output_filename.txt>"
    exit 1
fi

OUTPUT_FILE="$1"

echo "scale=301; 4*a(1)" | bc -l | head -c 302 > "$OUTPUT_FILE"
echo >> "$OUTPUT_FILE" # Append newline to the file

echo "Pi value has been saved to $OUTPUT_FILE"

