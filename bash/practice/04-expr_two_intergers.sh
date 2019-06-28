#!/usr/bin/env bash

read -p "Input x: " x
read -p "Input y: " y

printf "%d\n" $(expr $x + $y)
printf "%d\n" $(expr $x - $y)
printf "%d\n" $(expr $x \* $y)
printf "%d\n" $(expr $x / $y)
