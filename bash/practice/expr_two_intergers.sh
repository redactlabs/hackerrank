#!/usr/bin/env bash

# Written by	: Brian Vianzon <rufio@redactlabs.info>
# Script Name	: 04-expr_two_intergers.sh

# 'expr' is part of the GNU Coreutils to evaluate
# expressions
#
# Note: the input for multiplication must be escaped
# by a backslash "\" due to shell expansion

# For 'printf' the conversion specifier '%d' is used
# with the 'expr' becomes the argument that is converted
read -p "Input x: " x
read -p "Input y: " y

printf "%d\n" $(expr $x + $y)
printf "%d\n" $(expr $x - $y)
printf "%d\n" $(expr $x \* $y)
printf "%d\n" $(expr $x / $y)
