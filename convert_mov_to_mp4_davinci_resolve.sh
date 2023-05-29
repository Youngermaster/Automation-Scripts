#!/bin/bash

if [ $# -lt 2 ]; then
  echo "Usage: $0 <input_file> <output_file>"
  exit 1
fi

input_file="$1"
output_file="$2"

ffmpeg -i "$input_file" -c:v libx264 -preset ultrafast -crf 0 "$output_file"
