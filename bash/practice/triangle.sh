#!/usr/bin/env bash

# Written by	: Brian Vianzon <rufio@redactlabs.info>
# Script Name	: 07-triangle.sh
#
# This script utilizes functions to handle the contraints
# of 1 <= X, Y, Z, <= 1000

# if any of the inputs are 0 or less, exit
constraint_non_zero () {
  if [ $a -le 0 ] || [ $b -le 0 ] || [ $c -le 0 ]; then
    printf "\nError: value of any side must be greater than 1. Exiting...\n"
    exit 1
  fi
}

# if any of the inputs are 1001 or greater, exit
constraint_1000 () {
  if [ $a -ge 1001 ] || [ $b -ge 1001 ] || [ $c -ge 1001 ]; then
    printf "\nError: value of any side must be less than or equal to 1000. Exiting...\n"
    exit 1
  fi
}

# Read inputs
read -p "Side 1: " a
read -p "Side 2: " b
read -p "Side 3: " c

# Check constraints
constraint_non_zero $a $b $c
constraint_1000 $a $b $c

# If all sides are equal
if [ $a -eq $b ] && [ $a -eq $c ] && [ $b -eq $c ]; then
  printf "EQUILATERAL\n"
  exit 0
# Else If all sides are not equal
elif [ $a -ne $b ] && [ $b -ne $c ] && [ $a -ne $c ]; then
  printf "SCALENE\n"
  exit 0
# Else If two sides are equal
else
  printf "ISOSCELES\n"
  exit 0
fi
