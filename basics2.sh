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

# while
x=1

while [[ $x -le 100 ]]
do
  read -p "Pushup $x: Press enter to continue"
  (( x ++ ))
done
echo "Congrats, you completed your pushups!! "

# Until Loop

until [[ $order == "coffee" ]]
do
    echo " Would you like coffee or tea ?"
    read order
done
echo " Excellent choice, here is your coffee."

# For Loop

for cups in 1 2 3 4 5 6 7 8 9 10;
do
  echo "Hey, you've have $cups cups of coffee today."
done

for cups in {1..10};
do
  echo "Hey, you've have $cups cups of coffee today."
done

# Site Tester

for x in google.com bing.com facebook.com networkchuck.com;
do
    if ping -q -c 2 -W 1 $x > /dev/null; then
        echo "$x is up"
    else
        echo "$x is down"
    fi
done

