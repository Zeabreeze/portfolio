#!/bin/bash 

# run password check if the user provides a correct password
./passwordCheck.sh

exitcd=0 

#Get the activity choice from a user
while [ $exitcd = 0 ] 
do 

echo " What you would like to do? :  " 
echo -e "1 - Create a folder" 
echo -e "2 - Copy a folder" 
echo -e "3 - Set a password" 
read -rp "Please enter 1, 2, 3, or 'q' to quit: " choice 

    case "$choice" in  
        1) 
        ./folderCreator.sh
        exitcd=1 
        ;; 
        2) 
        ./folderCopier.sh
        exitcd=1 
        ;;  
        3) 
        ./setPassword.sh
        exitcd=1 
        ;; 
        q) 
        exitcd=1 
        echo "Goodbye.." 
        sleep 2 
        ;; 
        *) 
        clear 
        echo "Incorrect input, please try again." 
        sleep 2 
        ;; 
    esac

done 
 