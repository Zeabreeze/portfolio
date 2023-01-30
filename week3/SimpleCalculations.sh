#!/bin/bash 

exitcd=0  
red="\e[31m"
green="\e[32m"
blue="\e[34m"
purple="\e[35m"
reset="\e[0m"

#Get the activity choice from a user 
read -rp "First value: " val_a 
read -rp "Second value: " val_b 

while [ $exitcd = 0 ]  

do  

echo "Which calculation you would like to perform? :  "  

echo -e "${blue}1. Addition" 

echo -e "${green}2. Subtraction" 

echo -e "${red}3. Multiplication" 

echo -e "${purple}4. Division${reset}" 

read -rp  "Choose: 1; 2; 3; 4; or 'q' to quit: " choice 

    case "$choice" in   

        1)  
        out=$(($val_a + $val_b))
        echo -e "${blue}The outcome is : $out" 
        exitcd=1  
        ;;  

        2)  
        out=$(($val_a - $val_b)) 
        echo -e "${green}The outcome is : $out" 
        exitcd=1  
        ;;   

        3) 
        out=$(($val_a * $val_b)) 
        echo -e "${red}The outcome is : $out" 
        exitcd=1  
        ;;  

        4)  
        out=$(($val_a / $val_b)) 
        echo -e "${purple}The outcome is : $out" 
        exitcd=1  
        ;;  

        q)  
        echo -e "Goodbye.." 
        exitcd=1  
        ;;  

        *)  
        clear  
        echo "Incorrect input, please try again." 
        exitcd=1 
        ;;

    esac 

done  