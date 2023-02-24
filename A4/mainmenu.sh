#!/bin/bash  
 
#--------------------------------------------------------------
#Written by: Isaree Benjabawornnun
#Created Date: 19 Feb 2023
#Revised Date: 23 Feb 2023
#Overview:
#First check the password is valid. Then enter the main menu.
#Provide a user with selected options.  Then the choice made, 
#execute the data queries.
#--------------------------------------------------------------


#Set variables.
exitcd=0  
red="\e[31m"
green="\e[32m"
blue="\e[34m"
purple="\e[35m"
brown="\e[33m"
#cyan="\e[36m"
dgray="\e[90m"
lyellow="\e[93m"
reset="\e[0m"

# First run password check if the user provides a correct password 
./pswdcheck.sh 

# While the user does not exist
while [ $exitcd = 0 ]  
do  

# List of data enquiry options 
    
    echo "Please select one of the options below."  
    echo -e "${green}1 - A list of companies have data breached in healthcare sector"  
    echo -e "${blue}2 - A list of companies that have less than 10,000 incidents"  
    echo -e "${purple}3 - A list of companies in 2022 that are effected"  
    echo -e "${red}4 - Display a graph for 2022 Industry versus incidents"    
    echo -e "${dgray}5 - " 
    echo -e "${lyellow}6 - Exit${reset}"  
    read -rp "Enter the option number: " choice  

#Execute each choice that has been selected
case "$choice" in  

    1)  
    # execute the script: List of companies have data breached in healthcare
    echo -e "${green}"
    ./task1.sh 
    exitcd=1  
    ;;  

    2)  
    # execute the script: List of companies of less than 10,000 incidents
    echo -e "${blue}"
    ./task2.sh 
    exitcd=1  
    ;;  

    3)  
    # execute the script: list of companies in 2022 that are effected 
    echo -e "${purple}"
    ./task3.sh 
    exitcd=1  
    ;;  

    4)  
    # execute the script: generate a graph of organisation type versus records
    echo -e "${brown}"
    ./task4.py 
    exitcd=1  
    ;;  

    #5)  
    # Calling a script to create multiple folders
    #echo -e "${cyan}"
    #./megafoldermaker.sh 
    #exitcd=1  
    #;;  
    
    6)  
    # A choice to exit
    echo -e "${red}Goodbye!"  
    sleep 1
    exitcd=1 
    ;;  

    *)    
    # Invalid input message
    echo -e "${red}Incorrect input, please try again."  
    sleep 1
    clear
    ;;  
esac 

done
