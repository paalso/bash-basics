#!/usr/bin/env bash

set -e

feedbacks=()
FEEDBACKS_SEPARATOR='-----'

function echo_help {
  echo 'Доступные команды:'
  echo
  echo '  help         - вывести справку по командам'
  echo '  add-review   - добавить отзыв'
  echo '  list-reviews - показать все отзывы'
  echo '  clear        - удалить все отзывы'
}

while read -ep '> ' command; do
  case $command in
    a | add-review )
      read -ep 'Введите свой отзыв: ' feedback
      feedbacks+=("$feedback")
      echo "Спасибо за ваш отзыв!";;

    l | list-reviews )
      echo $FEEDBACKS_SEPARATOR
      for feedback in "${feedbacks[@]}"; do
        echo "$feedback"
        echo $FEEDBACKS_SEPARATOR
      done;;

    c | clear )
      feedbacks=();;

    h | help )
      echo_help;;

    q | quit | exit)
      exit 0;;

    * )
      echo 'Неизвестная команда. Введите help, чтобы узнать о доступных командах';;
  esac
done
