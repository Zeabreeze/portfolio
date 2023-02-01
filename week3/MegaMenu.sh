#!/bin/bash  

# run password check if the user provides a correct password 

~/scripts/portfolio/week2/passwordCheck.sh 

exitcd=0  

#Get the activity choice from a user 

while [ $exitcd = 0 ]  

do  

echo "Please select one of the options below"  

echo -e "1 - Create a folder"  

echo -e "2 - Copy a folder"  

echo -e "3 - Set a password"  

echo -e "4 - Calculator"  

echo -e "5 - Create Week Folders"  

echo -e "6 - Check Filenames"  

echo -e "7 - Download a File"  

echo -e "8 - Exit"  

read -rp "Please enter the option number: " choice  

#Execute each choice that has been selected
case "$choice" in  

    1)  
    ~/scripts/portfolio/week2/folderCreator.sh 
    exitcd=1  
    ;;  

    2)  
    ~/scripts/portfolio/week2/folderCopier.sh 
    exitcd=1  
    ;;  

    3)  
    ~/scripts/portfolio/week2/setPassword.sh 
    exitcd=1  
    ;;  

    4)  
    ./SimpleCalculations.sh 
    exitcd=1  
    ;;  

    5)  
    ./megafoldermaker.sh 
    exitcd=1  
    ;;  

    6)  
    ./filenames.sh 
    exitcd=1  
    ;;  

    7)  
    ./InternetDownloader.sh 
    exitcd=1  
    ;;  

    8)  
    echo -e "Goodbye!"  
    sleep 2  
    exitcd=1 
    ;;  

    *)    
    echo "Incorrect input, please try again."  
    sleep 2  
    clear
    ;;  

esac 

done  