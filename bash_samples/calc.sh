#!/usr/bin/bash

# https://stepik.org/lesson/4771/step/10?unit=1074

# First argument: a number
# Second argument: opertion ("+", "-", "*", "/", "%", "**")
# Third argument: a number
# Gets the result of given arithmetic operation in a loop

while :; do
  read a op b
  if [[ $a == "exit" ]]; then
    echo "bye"
    exit
  elif [[ $op != "+" && $op != "-" && $op != "*" && $op != "/" && $op != "%" && $op != "**" ]]
  then
    echo "error"
    exit
  else
    let "result = $a $op $b"
    echo "$result"
  fi
done
