#!/bin/bash

#set the variables to compare
val_a="./password.txt"
val_h=$(echo -n "$password" | sha256sum) 
c_hash=$(cat "$val_a") 
#count=1
red="\e[31m"
green="\e[32m"
blue="\e[34m"
reset="\e[0m"
num=3
#Allow three attempts with password validation

    #Ask the user to type a secret password
    

#attempt() {
    while [ "$val_h" != "$c_hash" ]
    do
        echo -e "${blue}"
        read -rsp "What is your secret password: " password

    #Check the user's password against the hash stored
    if [ "$val_h" == "$c_hash" ]; then

        #if the user's password is correct or not, print relevant messages
        echo -e "${green}\nAccess Granted"
        exit 0
    elif [ $num > 0 ]; then
        echo -e "Invalid password.  Only ${green} $num ${reset}chances left."
        echo -e "${blue}"
        read -rsp "What is your secret password: " password
        (num++)
    else
        echo -e "${red}Too many attempts, program terminates...${reset}"
        exit 1
    fi
done
#}

pass() {
    
   # else
    #    echo -e "${red}\nAccess Denied.${reset}"
        #read -rsp "Please try again" $val_h
     #   echo -e "${blue}"
      #  read -rsp "What is your secret password: " password
       # (( count++ ))
    #echo -e "Exit code 1${reset}"
        #exit 1
    fi
#echo -e "${red}\nAccess Denied."
#echo -e "Exit code 1${reset}"

}

pass

exit 0