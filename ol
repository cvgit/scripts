#! /bin/bash

# ./ol file:5
# opens "file" with vi at line 5

file=$(awk '{sub(/:[0-9]*$/,"")}1' <<< "$1")
line=$(awk '{sub(/^.*:/,"")}1' <<< "$1")
echo $file
echo $line

vim "+$line" "$file" -c 'set number' -c 'normal zt'
