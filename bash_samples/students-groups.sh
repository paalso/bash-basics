#!/usr/bin/bash

# https://stepik.org/lesson/6282/step/9?unit=1234

# младше либо равно 16: "child",
# от 17 до 25 (включительно): "youth",
# старше 25: "adult".

MAX_CHILD_AGE=16
MAX_YOUTH_AGE=25

function print_group_by_age()
{
  if [[ $age -le $MAX_CHILD_AGE ]]
  then
    echo "child"
  elif [[ $age -le $MAX_YOUTH_AGE ]]
  then
    echo "youth"
  else
    echo "adult"
  fi
}

while [[ 1 ]]
do
  echo "enter your name:"
  read name
  if [[ -z $name ]]
  then
    break
  fi

  echo "enter your age:"
  read age
    if [[ $age -eq 0 ]]
  then
    break
  fi

  echo "$name, your group is $(print_group_by_age $age)"
done
echo "bye"
