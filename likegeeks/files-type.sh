#!/usr/bin/env bash

set -e

items=`ls .`
items=`ls /home/paalso`
for var in $items; do
  if [[ -d $var ]]; then
    type="directory"
  else
    type="file"
  fi
  echo "$var is a $type"
done
