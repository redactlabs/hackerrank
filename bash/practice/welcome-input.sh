#!/usr/bin/env bash
# Written by	: Brian Vianzon <rufio@redactlabs.info>
# Script Name	: 02-welcome_input.sh

# 'read' is a Bash built-in where '-p' is for a prompt
# and 'name' is set as a variable
#
# On the output string for 'printf' the '\n'
# after $name creates a newline

read -p "Name: " name
printf "Welcome $name\n"
