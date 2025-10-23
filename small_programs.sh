#!/bin/bash

# Site Tester

for x in google.com bing.com facebook.com networkchuck.com;
do
    if ping -q -c 2 -W 1 $x > /dev/null; then
        echo "$x is up"
    else
        echo "$x is down"
    fi
done


# Weather Checker

for x in $(cat cities.txt);
do 
  weather=$(curl -s http://wttr.in/$x?format=3)
  echo "$weather"
done

# Site Up Checker

echo "what do yo want to check ?"

read target

while true
do 
  if ping -q -c 2 -W 1 $target > /dev/null; then
    echo "Hey, you're up !!"
    break
  else
    echo "$target is currently down."
  fi
sleep 2
done

# 

echo "Welcome to the Hollywood Tower Hotel"
sleep 1 
echo "Going up"
sleep 1

for x in {1..17}; 
do
  if [[ $x == 13 ]]; then
    continue
  fi
  echo "Floor $x"
  sleep 1
done
