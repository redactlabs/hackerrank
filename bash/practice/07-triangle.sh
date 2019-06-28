#!/usr/bin/env bash

constraint_gt () {
  if [ $a -ge 1 ] && [ $b -ge 1 ] && [ $c -ge 1 ]; then
    printf ""
  else
    printf "\nError: value of any side must be greater than 1. Exiting...\n"
    exit 1
  fi
}

constraint_lt () {
  if (( $a <= 1000 )) && (( $b <= 1000 )) && (( $c <= 1000 )); then
    printf ""
  else
    printf "\nError: value of any side must be less than 1000. Exiting...\n"
    exit 1
  fi
}

add () {
  sum1=$(($1 + $2))
  sum2=$(($1 + $3))
  sum3=$(($2 + $3))
}


read -p "Side 1: " a
read -p "Side 2: " b
read -p "Side 3: " c
constraint_gt $a $b $c
constraint_lt $a $b $c
add $a $b $c
if (( $a == $b )) && (( $a == $c)) && (( $b == $c )); then
  printf "EQUILATERAL\n"
  exit 0
elif (( $a != $b )) && (( $b != $c )) && (( $a != $c )) && (( $sum1  > $c )) && (( $sum2 > $b )) && (( $sum3 > $a )); then
  printf "SCALENE\n"
  exit 0
else
  printf "ISOSCELES\n"
  exit 0
fi
