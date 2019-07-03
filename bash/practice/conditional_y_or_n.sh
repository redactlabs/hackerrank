#!/usr/bin/env bash

# Written by	: Brian Vianzon <rufio@redactlabs.info>
# Script Name	: 06-conditional_y_or_n.sh
#
# [[ expression ]] is a Bash Conditional Expression
# See https://www.gnu.org/software/bash/manual/html_node/Reserved-Word-Index.html
# 
# The following uses the Logical OR '||' using double 
# pipes '|' to account for lower or uppercase inputs

read -p "Input: " input

if [[ "$input" = "y" || "$input" = "Y" ]]; then
  printf "YES\n"
elif [[ "$input" = "n" || "$input" = "N" ]]; then
  printf "NO\n"
fi
