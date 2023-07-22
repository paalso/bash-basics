#!/usr/bin/env bash

set -e

case $((RANDOM %4 + 1)) in
  1) choise="Красная";;
  2) choise="Желтая";;
  3) choise="Зеленая";;
  4) choise="Синяя";;
esac
echo $choise
