#!/usr/bin/env bash

# Written by	: Brian Vianzon <rufio@redactlabs.info>
# Script Name	: 03-for_loop_1_99_odd.sh

# The variable 'i' is getting assigned a value using
# curly braces, known as brace expansion.
#
# As long as the condition of 'i' assigned a value,
# the for loop will continue to iterate and execute.
for i in {1..99..2}; do
  printf "$i\n"
done
