#!/bin/bash

# Check if URL file is provided
if [ $# -ne 1 ]; then
    echo "Usage: $0 url_list.txt"
    exit 1
fi

# Check if lux is installed
if ! command -v lux &> /dev/null; then
    echo "lux not found. Please install it first."
    exit 1
fi

# Counter for naming files
counter=1

# Read URLs from file and download
while read url; do
    if [ ! -z "$url" ]; then
        echo "Downloading video $counter: $url"
        lux -c cookies.txt -f 80-12 -m -O "$counter" "$url"
        counter=$((counter + 1))
    fi
done < "$1"

echo "Download complete!"
