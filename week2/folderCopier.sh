#!/bin/bash

# A script to copy folder 
# first read the input name
read -p "Type the name of the folder you would like to copy:  " folderName

#if the name is a valid directory

if [ -d "$folderName" ]; then

    # then get the destination input
    read -p "Type the name of the destination folder:  " newFolderName

    #copy it to a new location
    cp -r "$folderName" "$newFolderName"
    echo "Your folder is now copied."

else

    #otherwise, print an error message
    echo "I couldn't find that folder at all."

fi

exit 0