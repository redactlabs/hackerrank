#!/usr/bin/env bash

read -p "Input x: " x
read -p "Input y: " y

if [ "${x}" -lt "${y}" ]; then
  printf "X is less than Y"
elif [ "${x}" -gt "${y}" ]; then
  printf "X is greater than Y"
elif [ "${x}" -eq "${y}" ]; then
  printf "X is equal to Y"
fi
