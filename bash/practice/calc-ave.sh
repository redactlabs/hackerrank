#!/usr/bin/env bash

# Written by	: Brian Vianzon <rufio@redactlabs.info>
# Script Name	: calc-ave.sh

# Read total of number of inputs
read n

# Check inputs are 1 <= n <= 500
if (( $n >= 1 )) && (( $n <= 500 )); then
  # Initialize sum to '0'
  sum=0
  # Interate for each input based on 'n'
  for (( i=1 ; i<=$n ; i++)); do
    read x
    # Check constraints of -10000 <= x <= 10000
    if (( $x >= -10000 )) && (( $x <= 10000 )); then
      # Iterate the sum for each input 
      let "sum+=$x"
    else
      printf "%s\n" "Error: -10000 <= x <= 10000"
      exit 1
    fi 
  done
  # Execute the sum/inputs to three decimal places via 'bc'
  # where %s is the format specifier to output the answer
  # as a string
  printf "%.3f\n" $(printf "%s\n" "scale=4; $sum/$n" | bc)
else
  printf "%s\n" "Error: 1 <= n <= 500"
  exit 1
fi
