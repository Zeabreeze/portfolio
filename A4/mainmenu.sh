#!/bin/bash  
 
#--------------------------------------------------------------
#Written by: Isaree Benjabawornnun
#Created Date: 19 Feb 2023
#Revised Date: 25 Feb 2023
#Overview the process of mainmenu:
#1. Check the password is valid 
#2. Display the main menu
#3. The user makes a menu selection
#4. Execute the selected option
#5. Enter a choice to exit the program
#--------------------------------------------------------------

#Set variables.
red="\e[31m"
green="\e[32m"
blue="\e[34m"
purple="\e[35m"
brown="\e[33m"
cyan="\e[36m"
dgray="\e[90m"
lightyellow="\e[93m"
reset="\e[0m"
underline="\e[4m"
bold="\e[1m"

#Set up a block of function on data processing
Process_choice() 
{
    while true 
    do
    # List of data enquiry options 
        echo -e "${cyan}"
        figlet Data Analysis
        echo -e "${reset}"
        echo -e "${bold}Purpose: Analysing data breaches information on the Wiki web page${reset}"
        echo -e "${underline}*-- Please select one of the options below --*${reset}"  
        echo -e "${green}1 - Companies with data breaches in healthcare sector"  
        echo -e "${blue}2 - Companies that have less than 10,000 incidents"  
        echo -e "${purple}3 - 2022 list of companies with data breach incidents"  
        echo -e "${red}4 - 2022: Industry type versus incidents graph"    
        echo -e "${dgray}5 - Total number of University involved in data breaches" 
        echo -e "${lightyellow}6 - Exit${reset}"  
        read -rp "Enter the option number: " choice  

#Execute each choice that has been selected
    case "$choice" in  

        1)  
        # execute the script: List of companies have data breached in healthcare
        echo -e "${green}"
        echo -e "*** THIS IS THE OUTPUT ***"
        ./task1.sh 
        sleep 6
        ;;  

        2)  
        # execute the script: List of companies of less than 10,000 incidents
        echo -e "${blue}"
        echo -e "*** THIS IS THE OUTPUT ***"
        ./task2.sh 
        sleep 6
        ;;  

        3)  
        # execute the script: list of companies in 2022 that are effected 
        echo -e "${purple}"
        echo -e "*** THIS IS THE OUTPUT ***"
        ./task3.sh 
        sleep 6
        ;;  

        4)  
        # execute the script: generate a graph of organisation type versus records
        echo -e "${brown}"
        echo -e "*** THE OUTPUT IS SAVED TO A FILE -> 2022graph.png ***"
        python3 ./task4.py 
        sleep 2
        ;;  

        5)  
        # Calling a script to get total number of University effected so far..
        echo -e "${dgray}"
        echo -e "*** THIS IS THE OUTPUT ***"
        ./task5.sh 
        sleep 5
        ;;  
    
        6)  
        # A choice to exit
        echo -e "${lightyellow}"
        /usr/games/cowsay -e @@ Goodbye!  
        sleep 2
        break
        ;;  

        *)    
        # Invalid input message
        echo -e "${red}Incorrect input, please try again."  
        sleep 2
        clear
        ;;
        
    esac 
    
    done
}


#Run a password check script for if the user provides a correct password 
if ! ./passwordcheck.sh; then
    echo -e "${lightyellow}"
    echo "Goodbye...."
    exit 11
else
    #Call the analysis function above and process
    Process_choice 
fi