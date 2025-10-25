#!/bin/bash

Trap - used to catch and handle signals within a shell script

read -p "Enter file name: " file
echo "You entered: $file"

trap "echo 'Script INTERRUPTED. File was: $file'" INT
trap "echo 'Script EXITED. File was: $file'" EXIT
trap "echo 'Script TERMINATED. File was: $file'" TERM
trap "echo 'Script ERROR. File was: $file'" ERR

echo "Running... (press Ctrl+C to interrupt)"
sleep 20


Subshells ( ... ) - Run Commands in a New Environment
a new child process that inherits environment variables but doesn’t affect the parent shell

count=5
( count=10; echo "Inside subshell: $count" )
echo "Outside subshell: $count"

# $(command) — Command Substitution
#useful for storing results into variables or using dynamic values inline.

current_date=$(date +"%Y-%m-%d")
echo "Today's date: $current_date"

echo "User count: $(who | wc -l)"
