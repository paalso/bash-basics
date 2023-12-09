#!/usr/bin/env bash

set -e

MAX_INT=$((2**(64-1)-1))
MAX_FILES_TO_OUTPUT=5
ELLIPSIS="  .................................."

IFS=:
for dir in $PATH; do
  echo "$dir"
  counter=0
  for file in $dir/*; do
    if [[ -x $file ]]; then
      counter=$(( $counter + 1 ))
      if [[ $counter -eq $((MAX_FILES_TO_OUTPUT + 1)) ]]; then
      echo $ELLIPSIS
      elif [[ $counter -gt $(($MAX_FILES_TO_OUTPUT + 1)) ]]; then
        continue    
      else
        echo "  $file"
      fi
    fi
  done
  echo "$counter executable files in $dir"
  echo
done
