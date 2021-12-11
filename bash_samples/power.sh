#!/usr/bin/bash

# Raise $base to the power of $exp

if [[ $# -ne 2 ]]
then
  echo "Usage: $0 base exp"
  exit 1
fi

base=$1; exp=$2
p=1
while [[ $exp > 0 ]]
do
  let "p*=base"
  let "exp-=1"
done
echo $p
