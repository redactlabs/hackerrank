#!/usr/bin/env bash

# Written by    : Brian Vianzon <rufio@redactlabs.info>
# Script Name    : for_loop_1_to_50.sh

# The variable 'i' is getting assigned a value using
# curly braces, known as brace expansion. 
# 
# As on as the condition of 'i' assigned a value, 
# the for loop will continue to iterate and execute. 
for i in {1..50}; do
  printf "$i\n"
done
