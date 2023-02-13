#!/bin/bash 

# A simple script to show output of a variable array of names.
# In this case a list of fruits.
# Written by: Isaree Benjabawornnun

# Set the value
f='Apple Mango Strawberry Orange Banana'

# go through each name in the list
for fr in $f; do 

    # output the name
    echo -e "FRUIT: $fr"

done 
echo -e "All done" 