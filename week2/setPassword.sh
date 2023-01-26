#!/bin/bash

# Greeting 
# echo Welcome $name

# Ask the user for a folder name to create 
# read -p "Type the name of the folder you would like to create ->  " folderName
# mkdir "$folderName"

#Type the secret password
read -rsp "What is your secret password:  " $password

#Save the password to a file called 'secret.txt' in a newly created folder
#echo -n $password | sha256sum > ./$folderName/secret.txt

#Save the password to a file called 'secret.txt'
echo -n $password | sha256sum > ./secret.txt
echo -e "\nThe password has been saved to a file."  #called 'secret.txt'"

exit 0

