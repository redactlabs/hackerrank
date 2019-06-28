#!/usr/bin/env bash

read n
if (( $n >= 1 )) && (( $n <= 500 )); then
  sum=0
  for (( i=1 ; i<=$n ; i++)); do
    read x
    if (( $x >= -10000 )) && (( $x <= 10000 )); then
      let "sum+=$x"
    else
      printf "%s\n" "Error: -10000 <= x <= 10000"
      exit 1
    fi 
  done
  printf "%.3f\n" $(printf "%s\n" "scale=4; $sum/$n" | bc)
else
  printf "%s\n" "Error: 1 <= n <= 500"
  exit 1
fi
