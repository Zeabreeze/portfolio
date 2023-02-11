#!/bin/bash
x=5
if [ -e "items" ]; then
    echo "Items Exists"
fi 
if [ -f "$3" ]; then
    echo "$3 is a file"
    cat "$3"
fi 
read -p "enter your name: " name
if [ $name = "Joe" ]; then
        echo "Hi Joe"
fi 

echo "the number is $x"
