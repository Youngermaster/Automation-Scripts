#!/bin/bash

if [ $# -lt 2 ]; then
  echo "Usage: $0 <input_file> <output_file>"
  exit 1
fi

input_file="$1"
output_file="$2"

ffmpeg -i "$input_file" -vcodec mjpeg -q:v 2 -acodec pcm_s16be -q:a 0 -f mov "$output_file"
