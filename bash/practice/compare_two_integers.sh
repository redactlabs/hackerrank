#!/usr/bin/env bash

# Written by	: Brian Vianzon <rufio@redactlabs.info>
# Script Name	: 05-compare-two-integers.sh
#
# Operators -eq, -lt, -gt are used for numeric comparisons 
# and the = (or ==), !=, <, >, for string comparisons

read -p "Input x: " x
read -p "Input y: " y

if [ "$x" -lt "$y" ]; then
  printf "X is less than Y"
elif [ "$x" -gt "$y" ]; then
  printf "X is greater than Y"
elif [ "$x" -eq "$y" ]; then
  printf "X is equal to Y"
fi
