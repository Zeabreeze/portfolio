#!/bin/bash  

# 
#--------------------------------------------------------------
#Written by: Isaree Benjabawornnun
#Created Date: 19 Feb 2023
#Revised Date: 19 Feb 2023
#Overview:
#First check the password is valid. Then enter the main menu.
#Provide a user with selected options.  Then the choice made, 
#execute the data queries.
#--------------------------------------------------------------


# First run password check if the user provides a correct password 
./pswdcheck.sh 

#Set variables.
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
# List of data enquiry options 
    
    echo "Please select one of the options below."  
    echo -e "${green}1 - A list of incidents happened in 2021"  
    echo -e "${blue}2 - A list of companies that got hacked"  
    echo -e "${purple}3 - Display yearly "  
    echo -e "${brown}4 - "    
    echo -e "${cyan}5 - "  
    echo -e "${dgray}6 - "  
    echo -e "${lyellow}7 - "     
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