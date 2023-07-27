#!/usr/bin/env bash

# clean_spaces.sh
# This script trims leading and trailing white spaces, and
# replaces multiple white spaces with a single one in a given file.

input_file="$1"

sed -r 's/^\s+|\s+$//g; s/\s+/ /g' "$input_file"
