#!/bin/bash 

#A script that uses conditional logic and arithmetic 
#expressions to make a simple calculator.
#The calculator should allow the user to do addition, 
#subtraction, multiplication and division of integers.  
    #Addition operations should appear in Blue.
    #Subtraction operations should appear in Green.
    #Multiplication operations should appear in Red.
    #Division operations should appear in Purple.
# Written by: Isaree Benjabawornnun

#set variables of values, and colours for the script
exitcd=0  
red="\e[31m"
green="\e[32m"
blue="\e[34m"
purple="\e[35m"
brown="\e[33m"
cyan="\e[36m"
reset="\e[0m"

#Get the first and second numbers the user wants to utilize 
read -rp "First value: " val_a 
read -rp "Second value: " val_b 

# While the calculator is in use
while [ $exitcd = 0 ]  

do  
# Get the user's input
echo "Which calculation you would like to perform? :  "  
echo -e "${blue}1. Addition" 
echo -e "${green}2. Subtraction" 
echo -e "${red}3. Multiplication" 
echo -e "${purple}4. Division${reset}" 
read -rp  "Choose: 1; 2; 3; 4; or 'q' to quit: " choice 

    case "$choice" in   

        1)
        # Perform addition 
        out=$((val_a+val_b))
        echo -e "${blue} The outcome is: $out"
        exitcd=1  
        ;;  

        2)  
        # Perform subtraction
        out=$((val_a-val_b))
        echo -e "${green}The outcome is: $out" 
        exitcd=1  
        ;;   

        3) 
        # Perform multiplication
        out=$((val_a*val_b))
        echo -e "${red}The outcome is: $out"
        exitcd=1  
        ;;  

        4)  
        # Perform division
        out=$((val_a/val_b))
        echo -e "${purple}The outcome is: $out"
        exitcd=1  
        ;;  

        q)  
        # When user wants to quit
        echo -e "${brown}Goodbye.." 
        exitcd=1  
        ;;  

        *)  
        # Input is invalid
        clear  
        echo -e "${cyan}Incorrect input, please try again." 
        exitcd=1 
        ;;

    esac 

done  