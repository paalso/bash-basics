#!/usr/bin/bash

# https://stepik.org/lesson/4771/step/10?unit=1074

# First argument: a number
# Second argument: a number
# Gets greatest common divisors of given  in a loop numbers pairs

function gcd()
{
  r=$(($1 % $2))
  if [[ $r -eq 0 ]]; then
    echo "GCD is $2"
    # exit 0  
  else
    gcd $2 $r
  fi   
}


while [[ 1 ]]; do
  read m n
  if [[ -z $m ]]; then
    echo bye
    exit 0
  else
    gcd $m $n
  fi
done
