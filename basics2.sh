#!/bin/bash

echo "$RANDOM" # ENVIROMENT VARIABLES not available to child processes
echo "$PWD, $SHELL, $HOSTNAME, $USER"

export SYSTEM_WIDE_VARIABLE="SYSTEM WIDE VARIABLE" # Avaliable to all child processes

# echo $((2+3)) 
echo $(($RANDOM % 10)) 

# Conditionals

echo "Hey, do you like coffee? (y/n)"

read coffee

if [[ $coffee == "y" ]]; then
    echo "You're awesome"
else
    echo "Leave right now !!!!"
fi