#!/bin/bash

which $SHELL # check Shell directory

TERMINAL_NAME="SHEBANG" # Variable

echo "Heyy!!! I am $TERMINAL_NAME 🔥" 

sleep 3 

echo "What is your name ?"

read NAME # get user input 

COMPLIMENT=$1 # get possitional Argument 1 can use more by incremental value

USER=$(whoami)
DATE=$(date)
WHEREAMI=$(pwd)

echo "Hii $NAME !!"

sleep 1

echo "Love Your $COMPLIMENT"

sleep 1

echo "We are in $WHEREAMI "

echo "$SYSTEM_WIDE_VARIABLE" #comes from ~/.bashrc

