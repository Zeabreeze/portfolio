#!/bin/bash

echo "Hello, please enter your name"

read name

echo "Hello $name! Welcome to \"Scripting Languages\""

if  [ "$name" = "Isaree" ] || [ "$name" = "isaree" ] 
then 
    echo "You're really good at coding!"
else
    echo "I don't know you..."
fi

exit 0