#!/bin/bash
# This script demonstrates various string manipulation techniques in bash

# Function to convert a string to uppercase
to_uppercase() {
    local input_string="$1"
    echo "${input_string^^}"
}

to_uppercase "hello world";

# Function to convert a string to lowercase
to_lowercase() {
    local input_string="$1"
    echo "${input_string,,}"
}

to_lowercase "HELLO WORLD";

# Function to reverse a string
reverse_string() {
    local input_string="$1"
    echo "$input_string" | rev
}

reverse_string "Hello World";

# Function to check if a string contains a substring
contains_substring() {
    local input_string="$1"
    local substring="$2"
    if [[ "$input_string" == *"$substring"* ]]; then
        echo "The string contains the substring."
    else
        echo "The string does not contain the substring."
    fi
}

contains_substring "Hello World" "World";
contains_substring "Hello World" "world";

# Function to find the length of a string
string_length() {
    local input_string="$1"
    echo "${#input_string}"
}

string_length "Hello World";

# Function to replace a substring in a string
replace_substring() {
    local input_string="$1"
    local old_substring="$2"
    local new_substring="$3"
    echo "${input_string//$old_substring/$new_substring}"
}

replace_substring "Hello World" "World" "Bash";

# Function to split a string by a delimiter
split_string() {
    local input_string="$1"
    local delimiter="$2"
    IFS="$delimiter" read -ra parts <<< "$input_string"
    for part in "${parts[@]}"; do
        echo "$part"
    done
}

split_string "Hello,World,Bash" ",";
