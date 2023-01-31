#!/bin/bash

# While not exit, ge the URL from a user
while true
do
    read -rp "Please type an URL to download a file or type 'exit' to quit: " URL
    read -rp "Enter the location of where you would like to download the file to: " Loc

    if [[ $URL != "exit" ]]; then
            wget -m $URL
        echo -e "\n-> $Loc"
    else
        echo -e "Goodbye!"
        exit 1
    fi
    
done