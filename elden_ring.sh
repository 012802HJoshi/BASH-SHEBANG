#!/bin/bash

# First Beast Battle 

BEAST=$(($RANDOM % 2))

echo "First Beast is Approaching...."
echo "Prepare to battle. Pick a number between 0-1. (0/1)"

read yourmove

if [[ $BEAST == $yourmove ]]; then
    if [[ $USER == "ashishsaini" ]]; then
        echo "Beast Vanquised!! Congratulations"
    else 
        echo "You Died"
        exit 1
    fi
else
    echo "You Died"
    exit 1
fi

sleep 2

#  Boss Battle 

echo "Boss Battle, Get Ready..."
echo "It's Margit. Pick a number between 0-9. (0/9)"

read yourmove

BEAST=$(($RANDOM % 10))

if [[ $BEAST == $yourmove || $yourmove == coffee ]]; then
    echo "Margit is Vanquised!! Congratulations"
elif [[ $USER == "ashishsaini" ]]; then
     echo "THIS USER ALWAYS WIN !!!"
else 
   echo "You Died"
   exit 1
fi
