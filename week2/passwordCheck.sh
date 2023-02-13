#!/bin/bash

# Section 2.4
#Ask the user to type a secret password (hide that input).
#Check the user’s password against the hash stored in 'secret.txt'.    
#If the user’s password is correct, 
#print “Access Granted” and quit with the exit code 0.
#If the user’s password is incorrect 
#print “Access Denied” and quit with the exit code 1.
# Written by : Isaree Benjabawornnun

# set colours for presentation
red="\e[31m"
green="\e[32m"
blue="\e[34m"
reset="\e[0m"

#Ask the user to type a secret password
echo -e "${blue}"
read -rsp "What is your secret password: " password

#set the variables to compare
val_a="./secret.txt"
val_h=$(echo -n "$password" | sha256sum) 
c_hash=$(cat "$val_a") 

#Check the user's password against the hash stored
if [ "$val_h" == "$c_hash" ]; then

#if the user's password is correct or not, print relevant messages
    echo -e "${green}\nAccess Granted"
    # echo -e "Exit code 0"
    exit 0
else
    echo -e "${red}\nAccess Denied"
    echo -e "Exit code 1${reset}"
    exit 1
fi