#!/bin/bash

# Greeting 
echo Welcome $name

# Ask the user for a folder name to create 
read -p "Type the name of the folder you would like to create ->  " folderName
mkdir "$folderName"

#Type the secret password
read -rsp "What is your secret password:  " $password

#Save the password to a file called 'secret.txt'
echo -n $password > secret.txt

exit 0

