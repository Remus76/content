#!/usr/bin/env bash

set -e

if [ -z "$1" ]; then
    echo "Usage: $0 \"new_version\""
    exit 1
fi

find . -type d \( -name "*.c4f" -o -name "*.c4s" \) | while read -r dir; do
    printf "%s\r\n" "$1" > "$dir/Version.txt"
done
find . -maxdepth 1 -type d -name "*.c4d" | while read -r dir; do
    printf "%s\r\n" "$1" > "$dir/Version.txt"
done
