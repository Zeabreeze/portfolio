#!/bin/bash

# While not exit, get the URL from a user
y=true

while [[ $y == true ]] 
do
    read -rp "Enter the URL to download a file or type 'exit' to quit: " URL 

    #if the user types exit
    if [[ $URL == 'exit' ]]; then
        echo -e "Goodbye!"
        exit 1
    else   
    #if the URL provided, then download the file 
        read -rp "Enter the location for your file: " Loc 
        mkdir "$Loc"
        wget "$URL" -P "$Loc"
        
    fi
    
done

exit 0