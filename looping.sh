#!/bin/bash

# This script demonstrates a simple loop in bash
for i in {1..5}
do
  echo "Iteration number: $i"
done

# Iterates through a simple list
declare -a list=("apple" "banana" "cherry")
for item in "${list[@]}"
do
  echo "Item: $item"
done

# Using a while loop
count=1
while [ $count -le 5 ]
do
  echo "Count is: $count"
  ((count++))
done

# looping until a condition is met, given a number
loop_until() {
  local number=$1
  local i=1
  while [ $i -le $number ]
  do
      if [ $i -gt 15 ]; then
          echo "Stopping loop as $i exceeds 15"
          break
      else
          echo "Looping: $i"
          ((i++))
      fi
  done
}

loop_until 12;
loop_until 150;
