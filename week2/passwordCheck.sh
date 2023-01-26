#!/bin/bash

#Ask the user to type a secret password
read -rsp "What is your secret password:  " $password

#Save password to a secret file
echo -n $password | sha256sum > hidesecret.txt

#Check the user's password against the hash stored
echo -rsp "Please enter a password to check:  " $password1
    #if the user's password is correct, print a message
if [[ sha256sum $password1] -eq [sha256sum -c hidesecret.txt ]]; then
    echo "Access Granted"
    echo -e "\n\"Exit code 0\""
    exit 0
    #if the user's password is incorrect, print a message
elif [[ sha256sum $password1] -ne [sha256sum -c hidesecret.txt ]]; then
    echo "Access Denied"
    echo -e "\n\"Exit code 1\""
    exit 1
fi

exit 2