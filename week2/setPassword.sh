#!/bin/bash

#Type the secret password
read -rsp "What is your secret password:  " password

#Save the password to a file called 'secret.txt in the current folder'
echo -n $password | sha256sum > ./secret.txt
echo -e "Password saved"
exit 0