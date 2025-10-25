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



| Type    | Operator | Meaning               |
| ------- | -------- | --------------------- |
| Numeric | `-eq`    | equals                |
|         | `-ne`    | not equal             |
|         | `-gt`    | greater than          |
|         | `-lt`    | less than             |
| String  | `=`      | equals                |
|         | `!=`     | not equals            |
| File    | `-f`     | file exists           |
|         | `-d`     | directory exists      |
|         | `-e`     | file/directory exists |


