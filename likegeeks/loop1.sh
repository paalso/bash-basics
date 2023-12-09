#!/usr/bin/env bash

set -e

# for file in `ls`; do
for file in $(ls); do
  echo "$file: "
  file $file
  echo
done