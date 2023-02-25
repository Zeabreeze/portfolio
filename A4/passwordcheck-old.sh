#!/bin/bash

#--------------------------------------------------------------
#Written by: Isaree Benjabawornnun
#Created Date: 22 Feb 2023
#Revised Date: 23 Feb 2023
#Overview:
#Check the user’s password against the hash stored in 'password.txt'.    
#If the user’s password is correct, 
#print “Access Granted” and quit with the exit code 0.
#If the user’s password is incorrect 
#print “Access Denied” and quit with the exit code 1.
#--------------------------------------------------------------

# set colours for presentation
red="\e[31m"
green="\e[32m"
blue="\e[34m"
reset="\e[0m"

# Ask the user to type a secret password
echo -e "${blue}"
read -rsp "Please enter your password: " password

#set the variables to compare
value_stored="./secret.txt"
value_hash=$(echo -n "$password" | sha256sum) 
get_hash=$(cat "$value_stored") 

#for ((i = 0; i < 2; i++))
#do
    #Ask the user to type a secret password
    #echo -e "${blue}"
    #read -rsp "Please enter your password: " password
    #Check the user's password against the hash stored
    if [ "$value_hash" == "$get_hash" ]; then

    #if the user's password is correct or not, print relevant messages
        echo -e "${green}\nAccess Granted"
        i=2
        exit 0
    #for value_hash is not the get_hash
    else
        for ((i = 0; i < 2; i++))
        do
            echo -e "${red}\nAccess Denied. Please try again..${reset}"
            echo -e "${blue}"
            read -rsp "Please enter your password: " password
            if [ "$value_hash" != "$get_hash" ]; then
                echo -e "${red}\nAccess Denied.${reset}" 
                sleep 1
                clear
                i=2
                exit 1
         
        #elif ((i=2)); then
            else
                echo -e "${green}\nAccess Granted"
                i=2
                exit 0
            fi
        done
    fi
#done