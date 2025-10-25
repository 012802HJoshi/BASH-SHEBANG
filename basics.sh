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

echo "Script name: $0"       #files name before the 1st argument 
echo "First argument: $1"  
echo "Second argument: $2"
echo "Total arguments: $#".  #number of arguments so this is 2


# Arrays

fruits=("apple" "banana" "cherry")

echo "First fruit: ${fruits[0]}"
echo "First fruit: ${fruits[1]}"
echo "First fruit: ${fruits[2]}"
echo "First fruit: ${fruits[3]}"

echo "All Fruit: ${fruits[@]}"
echo "Total fruit: ${#fruits[@]}"

for fruit in "${fruits[@]}";
 do
  echo "LOOP : $fruit";
done 