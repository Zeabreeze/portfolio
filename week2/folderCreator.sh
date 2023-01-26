#!/bin/bash

#Ask for a folder name to be created
read -p "Type the name of the folder you would like to create ->  " folderName
mkdir "$folderName"
echo -e "Your folder '$folderName' has been created."

exit 0