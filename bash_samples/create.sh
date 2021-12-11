#!/usr/bin/bash

# Generate file or dir depending on the parameter

if [[ $# -ne 2 ]]
then
  echo "Usage: $0 type(f for file, d for dir) pathname"
  exit 1
fi

type=$1; pathname=$2

if [[ -e $pathname ]]
then
  echo "Cannot create $pathname: already exists"
  exit 1
fi

if [[ $type == "f" ]]
then
  touch $pathname
  echo "File $pathname succesfully created"
  exit 0
elif [[ $type == "d" ]]
then
  mkdir $pathname
  echo "Directory $pathname succesfully created"
  exit 0
else
  echo "Cannot create $pathname: wrong parameter $type"
  exit 1
fi
