#!/bin/bash

# A simple script to create a folder.  First, ask for a folder name to be created
read -p "Type the name of the folder you would like to create ->  " folderName

# use 'mkdir' to create a folder
mkdir "$folderName"

# give friendly message to let the user knows the folder is created.
echo -e "Your folder '$folderName' has been created."

exit 0