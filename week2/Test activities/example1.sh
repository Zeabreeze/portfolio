#!/bin/bash

echo Welcome

read -rp "Hello, please enter your names:  " nameOne nameTwo nameThree

unit="CYB6004 Scripting Languages"

echo -e "Hello $nameOne, $nameTwo, $nameThree! Welcome to \n\"$unit\""

read -rsp "What is the secret password:  " password

echo -e "\nI won't tell anyone!"

echo "I lied! Your password was $password Oppsss!"

exit 0