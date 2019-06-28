#!/usr/bin/env bash

read -p "Input input: " input

if [[ "${input}" = "y" || "${input}" = "Y" ]]; then
  printf "YES"
elif [[ "${input}" = "n" || "${input}" = "N" ]]; then
  printf "NO"
fi
