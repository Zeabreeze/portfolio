#!/bin/bash

#Ask the user to type a secret password

read -rsp "What is your secret password:  " password
echo -e $password
echo -e $password | sha256sum
#set the variables to compare
val_a="./secret.txt"
val_h=$(echo -n $password | sha256sum) 
c_hash=$(cat "$val_a") 
echo -e "\nEntered password: \n$val_h" 
echo -e "\nValue from the file: \n$c_hash" 

#Check the user's password against the hash stored
if [ "$val_h" == "$c_hash" ]; then

#if the user's password is correct or not, print relevant messages
    echo "Access Granted"
    echo -e "Exit code 0"
    exit 0
else
    echo "Access Denied"
    echo -e "Exit code 1"
    exit 1
fi