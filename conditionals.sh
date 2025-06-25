#!/bin/bash

# This script demonstrates the use of conditional statements in bash.

# Check if two numbers are equal
num1=10
num2=20
if [ $num1 -eq $num2 ]; then
    echo "The numbers are equal."
else
    echo "The numbers are not equal."
fi

# checks if a given number is greater than another
check_number() {
    local num1=$1
    local num2=$2
    if [ $num1 -gt $num2 ]; then
        echo "$num1 is greater than $num2."
    elif [ $num1 -lt $num2 ]; then
        echo "$num1 is less than $num2."
    else
        echo "$num1 is equal to $num2."
    fi
}

check_number 15 10;
check_number 5 10;
check_number 10 10;

# checks if two strings are equal
check_string() {
    local str1=$1
    local str2=$2
    if [ "$str1" = "$str2" ]; then
        echo "The strings are equal."
    else
        echo "The strings are not equal."
    fi
}

check_string "hello" "hello";
check_string "hello" "world";
