#!/usr/bin/env bash

set -e

file=$1
if [ -O $file ]; then
  echo yes
else
  echo no
fi
