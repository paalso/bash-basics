#!/usr/bin/bash

# https://stepik.org/lesson/6282/step/6?unit=1234

# 0 -->  No students
# 1 -->  1 student
# 2 -->  2 students
# 3 -->  3 students
# 4 -->  4 students
# 5 и больше --> A lot of students

studentsNumber=$1

if [[ $studentsNumber -lt 1 ]]
then
  echo "No students"
elif [[ $studentsNumber -eq 1 ]]
then
  echo "$studentsNumber student"
elif [[ $studentsNumber -lt 5 ]]
then
  echo "$studentsNumber students"
else
  echo "A lot of students"
fi
