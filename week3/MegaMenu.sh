#!/bin/bash  

# A script with more menu options. 
# To include new scripts from week 3. 
# Improve the menu to repeat until the user selects an “exit” option. 
# Improve it to use colours and formatting to be more user friendly.
# Written by: Isaree Benjabawornnun

# First run password check if the user provides a correct password 
~/scripts/portfolio/week2/passwordCheck.sh 

#Set value and colour variables.
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

# While the user does not exist
while [ $exitcd = 0 ]  

do  

#Get the activity choice from a user 
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
    # Calling create a folder script
    echo -e "${green}"
    ~/scripts/portfolio/week2/folderCreator.sh 
    exitcd=1  
    ;;  

    2)  
    # Calling a script to copy folders
    echo -e "${blue}"
    ~/scripts/portfolio/week2/folderCopier.sh 
    exitcd=1  
    ;;  

    3)  
    # Calling a script to set a password
    echo -e "${purple}"
    ~/scripts/portfolio/week2/setPassword.sh 
    exitcd=1  
    ;;  

    4)  
    # Calling a script to perform basic calculation
    echo -e "${brown}"
    ./SimpleCalculations.sh 
    exitcd=1  
    ;;  

    5)  
    # Calling a script to create multiple folders
    echo -e "${cyan}"
    ./megafoldermaker.sh 
    exitcd=1  
    ;;  

    6)  
    # Calling a script to check file name
    echo -e "${dgray}"
    ./filenames.sh 
    exitcd=1  
    ;;  

    7)  
    # Calling a script to download a file from the internet
    echo -e "${lyellow}"
    ./InternetDownloader.sh 
    exitcd=1  
    ;;  

    8)  
    # A choice to exit
    echo -e "${red}Goodbye!"  
    sleep 2  
    exitcd=1 
    ;;  

    *)    
    # Invalid input message
    echo -e "${red}Incorrect input, please try again."  
    sleep 2  
    clear
    ;;  

esac 

done  