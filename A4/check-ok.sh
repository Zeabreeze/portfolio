#!/bin/bash


# First run password check if the user provides a correct password 
str="Access Denied"
./pswdcheck.sh 
if [ "$str" ]; then 
   exit 1
else
    ./mainmenu.sh
     exit 0

fi