#!/usr/bin/bash

# Checks if file1 exists and is a file (not a directory)
# and copies to file2

if [[ $# -ne 2 ]]
then
  echo "Usage: $0 file-copy-from file-copy-to"
  exit 1
fi

file1=$1; file2=$2

if [[ ! -e $file1 ]]
then
  echo "Can't copy: path $file1 doesn't exist"
  exit 1
fi

if [[ -d $file1 ]]
then
  echo "Can't copy: path $file1 is a directory"
  exit 1
fi

if [[ -e $file2 ]]
then
  echo "Can't copy: path $file2 already exists"
  exit 1
fi

cp $file1 $file2
echo "$file1 succesfully copied to $file2"
exit 0
