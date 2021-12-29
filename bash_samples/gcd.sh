#!/usr/bin/bash

# https://stepik.org/lesson/4771/step/10?unit=1074

# First argument: a number
# Second argument: a number
# Gets greatest common divisors of given  in a loop numbers pairs

function gcd()
{
  r=$(($1 % $2))
  if [[ $r -eq 0 ]]; then
    return $2
  fi
  return $(gcd $2 $r)
}


while :; do
  read m n
  if [[ -z $m ]]; then
    echo bye
    exit 0
  else
    gcd $m $n
    echo "GCD is $?"
  fi
done
