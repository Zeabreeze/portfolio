#!/bin/bash
# A script to get a name input and using if statement to check if the name
# matches the statement condition
# if so gives an appropriate response
 
echo "please enter your name" 
read -r name

if [ "$name" = "Isaree" ]; then
    echo "Isaree is a nice name."
else
    echo "Hi $name"
fi

exit 0