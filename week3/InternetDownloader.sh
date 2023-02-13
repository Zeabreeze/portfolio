#!/bin/bash
#A script to do a web downloader. 
    #prompt the user to type a website URL to download or type “exit” to quit.”
    #prompt the user to type a download location
    #use wget to download the webpage requested by the user
    #repeat the process until the user types “exit”.
#Written by: Isaree Benjabawornnun

y=true

# While not exit, get the URL from a user
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