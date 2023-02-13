#!/bin/bash

# A script uses for setting a password 
# and output to a text file called 'secret.txt'

#Type the secret password
read -rsp "What is your secret password:  " password

#Save the password to a file in the current folder'
echo -n $password | sha256sum > ./secret.txt
echo -e "Password saved"
exit 0