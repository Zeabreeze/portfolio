#!/bin/bash

# While not exit, get the URL from a user
y=true 
while [[ $y = true ]] && [[ $URL != "exit" ]] 
do
    read -rp "Enter the URL to download a file or type 'exit' to quit: " URL 
    #read -rp "Enter the location for your file: " Loc 

    #if the URL provided, then download the file 
    if [[ $URL != "exit" ]]; then
            wget "$URL" #-O "$Loc"
        #echo -e "-> $Loc"
    else
        echo -e "Goodbye!"
        exit 1
    fi
    
done

exit 0