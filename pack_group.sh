#!/usr/bin/env bash

set -e

if [ -z "$1" ] || [ -z "$2" ]; then
    echo "Usage: $0 \"group\" \"target_dir\""
    exit 1
fi
if ! [ -d "$1" ]; then
    echo "Unpacked group file $1 not found"
    exit 1
fi
if ! [ -d "$2" ]; then
    echo "Target directory $2 not found"
    exit 1
fi

./c4group -c:c4group.ini -v "$1" -p
mv "$1" "$2"/
