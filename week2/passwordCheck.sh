#!/bin/bash

#val_a = "secret.txt"

#Ask the user to type a secret password
read -rsp "What is your secret password:  " $password

#Check the user's password against the hash stored

#echo -rsp "Please enter a password to check:  " $password1
    #if the user's password is correct, print a message
val_a = $password | sha256sum
# val_b = echo -n $password | sha256sum -c secret.txt
val_c = sha256sum secret.txt
if [ "$val_a" -eq "$val_c" ]; then
    echo "Access Granted"
    echo -e "Exit code 0"
    exit 0
    #if the user's password is incorrect, print a message
#elif [[ $password -ne sha256sum -c ./secret.txt ]]; then
else
    echo "Access Denied"
    echo -e "Exit code 1"
    exit 1
fi

exit 2