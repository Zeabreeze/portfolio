#!/bin/bash  

# run password check if the user provides a correct password 

~/scripts/portfolio/week2/passwordCheck.sh 

exitcd=0  
red="\e[31m"
green="\e[32m"
blue="\e[34m"
purple="\e[35m"
brown="\e[33m"
cyan="\e[36m"
dgray="\e[90m"
lyellow="\e[93m"
reset="\e[0m"

#Get the activity choice from a user 

while [ $exitcd = 0 ]  

do  

echo "Please select one of the options below."  

echo -e "${green}1 - Create a Folder"  

echo -e "${blue}2 - Copy a Folder"  

echo -e "${purple}3 - Set a Password"  

echo -e "${brown}4 - Calculator"  

echo -e "${cyan}5 - Create Week Folders"  

echo -e "${dgray}6 - Check Filenames"  

echo -e "${lyellow}7 - Download a File"  

echo -e "${red}8 - Exit${reset}"  

read -rp "Enter the option number: " choice  

#Execute each choice that has been selected
case "$choice" in  

    1)  
    echo -e "${green}"
    ~/scripts/portfolio/week2/folderCreator.sh 
    exitcd=1  
    ;;  

    2)  
    echo -e "${blue}"
    ~/scripts/portfolio/week2/folderCopier.sh 
    exitcd=1  
    ;;  

    3)  
    echo -e "${purple}"
    ~/scripts/portfolio/week2/setPassword.sh 
    exitcd=1  
    ;;  

    4)  
    echo -e "${brown}"
    ./SimpleCalculations.sh 
    exitcd=1  
    ;;  

    5)  
    echo -e "${cyan}"
    ./megafoldermaker.sh 
    exitcd=1  
    ;;  

    6)  
    echo -e "${dgray}"
    ./filenames.sh 
    exitcd=1  
    ;;  

    7)  
    echo -e "${lyellow}"
    ./InternetDownloader.sh 
    exitcd=1  
    ;;  

    8)  
    echo -e "${red}Goodbye!"  
    sleep 2  
    exitcd=1 
    ;;  

    *)    
    echo -e "${red}Incorrect input, please try again."  
    sleep 2  
    clear
    ;;  

esac 

done  