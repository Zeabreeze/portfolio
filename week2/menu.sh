#!/bin/bash 

# A script written to show the use of  the “case” statement 
#to run the three other scripts:
    #When the user selects 1, it should run folderCreator.sh.
    #When the user selects 2, it should run folderCopier.sh.
    #When the user selects 3, it should run setPassword.sh.
# Written by: Isaree Benjabawornnun 

# run password check script to ensure the user provides a correct password
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
        # run a create folder script
        ./folderCreator.sh
        exitcd=1 
        ;; 
        2) 
        # run a copying folder script
        ./folderCopier.sh
        exitcd=1 
        ;;  
        3) 
        # run set a pasword script
        ./setPassword.sh
        exitcd=1 
        ;; 
        q) 
        # for if the user wants to exit
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
 