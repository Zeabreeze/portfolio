#!/bin/bash

#Ask the user to type a secret password
read -sp "What is your secret password:  " password

#set the variables to compare
val_a="./secret.txt"
val_h=$(echo -n $password | sha256sum) 
c_hash=$(cat "$val_a") 

#Check the user's password against the hash stored
if [ "$val_h" == "$c_hash" ]; then

#if the user's password is correct or not, print relevant messages
    echo -e "\nAccess Granted"
    echo -e "Exit code 0"
    exit 0
else
    echo -e "\nAccess Denied"
    echo -e "Exit code 1"
    exit 1
fi