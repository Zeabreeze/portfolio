#!/bin/bash

# A script to go through the file content and check each line in the text file 
# for what they are and if they match to certain conditions set for the checkings.
# Written by : Isaree Benjabawornnun

filename="$1" 
i=1 
    #Go through each line in the file to check
while read -r line || [[ -n $line ]]; do 
        #check for filename text with .sh extension
    if [[ $line == *".sh"* ]]; then 
        echo "$line - That file exists"

        #check for a line with file directory format
    elif [[ $line == "." ]] || [[ $line == *"../"* ]]; then 
        echo -e "$line - That's a directory"

        #check if the line is blank, go next line
    elif [[ $line == "" ]]; then
        i=$((i+1))

        #other format of text
    else
        echo -e "$line - I don't know what that is!"
    fi 

   i=$((i+1)) 

done < "$filename" 

exit 0 