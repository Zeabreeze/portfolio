#!/bin/bash  

# A script to create a set number of folder with pattern names 
# such as folder 1, folder 2, and so on.
# This is to demonstrate a use of C-Style For Loop

#If there aren't two arguments to the script  
if (( $#!=2 )); then  
    #Print an error and exit  
    echo "Error, provide two numbers" && exit 1  
fi  

#For every number between the first argument and the last  
for ((i = $1; i <= $2; i++))  
do  
    #Create a new folder for that number  
    echo "Creating directory number $i"  
    mkdir "week $i"  
done  

exit 0
