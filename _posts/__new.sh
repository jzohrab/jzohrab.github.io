#!/bin/bash

echo "making a new post."

# Check if an argument is provided
if [ $# -ne 1 ]; then
    echo "Usage: $0 <some-string>"
    exit 1
fi

# Get the current date in the format yyyy-mm-dd
current_date=$(date +'%Y-%m-%d')

# Create the filename
filename="$current_date-$1.md"

# Check if the file already exists
if [ -e "$filename" ]; then
    echo "File '$filename' already exists. Aborting."
    exit 1
fi

cat <<EOF > "$filename"
---
layout: post
title:  TODO
categories: TODO
---

TODO

<!--end_excerpt-->

TODO

EOF


echo "File '$filename' created."
