#!/bin/bash
echo "please enter your name" 
read name

if [ "$name" = "Isaree" ]; then
    echo "Isaree is a nice name."
else
    echo "Hi $name"
fi

exit 0