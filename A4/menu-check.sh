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
exitout=0  
red="\e[31m"
green="\e[32m"
blue="\e[34m"
purple="\e[35m"
brown="\e[33m"
cyan="\e[36m"
dgray="\e[90m"
lyellow="\e[93m"
reset="\e[0m"
#return=$?
# While the user does not exist
#while [ $exitcd = 0 ]  
#do  

# First run password check if the user provides a correct password 
./passwordcheck.sh 
#if [ ${return} -eq 1 ]; then
#    echo "Goodbye...."
#else

#While the user does not exist
while [ $exitout = 0 ]  
do 
# List of data enquiry options 
        echo -e "${cyan}"
        figlet Welcome to Data Analysis
        echo -e "${reset}"
        echo -e "Purpose: Analysing data breaches information on the Wiki page"
        echo "Please select one of the options below."  
        echo -e "${green}1 - A list of companies have data breached in healthcare sector"  
        echo -e "${blue}2 - A list of companies that have less than 10,000 incidents"  
        echo -e "${purple}3 - A list of companies in 2022 that are effected"  
        echo -e "${red}4 - Display a graph for 2022 Industry versus incidents"    
        echo -e "${dgray}5 - Total number of University effected so far" 
        echo -e "${lyellow}6 - Exit${reset}"  
        read -rp "Enter the option number: " choice  
    
#fi

#Execute each choice that has been selected
case "$choice" in  

    1)  
    # execute the script: List of companies have data breached in healthcare
    echo -e "${green}"
    ./task1.sh 
    exitout=0
    ;;  

    2)  
    # execute the script: List of companies of less than 10,000 incidents
    echo -e "${blue}"
    ./task2.sh 
    exitout=1 
    ;;  

    3)  
    # execute the script: list of companies in 2022 that are effected 
    echo -e "${purple}"
    ./task3.sh 
    exitout=1  
    ;;  

    4)  
    # execute the script: generate a graph of organisation type versus records
    echo -e "${brown}"
    python3 ./task4.py 
    exitout=1 
    ;;  

    5)  
    # Calling a script to get total number of University effected so far..
    echo -e "${dgray}"
    ./task5.sh 
    exitout=1  
    ;;  
    
    6)  
    # A choice to exit
    echo -e "${red}"
    /usr/games/cowsay -e @@ Goodbye!  
    sleep 2
    exitout=1 
    ;;  

    *)    
    # Invalid input message
    echo -e "${red}Incorrect input, please try again."  
    sleep 2
    clear
    ;;  
esac 

done
