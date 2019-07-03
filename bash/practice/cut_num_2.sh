#!/usr/bin/env bash

# Written by	: Brian Vianzon <rufio@redactlabs.info>
# Script Name	: cut_num_2.sh

for ((i = 1 ; i <= 100 ; i++)); do
  while read n; do
    printf "$n" | cut -c 2,7
  done
done
