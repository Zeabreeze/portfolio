#!/bin/bash  

#Step 1: Write a GuessingGame.sh. 

#Write a script named GuessingGame.sh that uses the getNumber() function in a number guessing game with the following rules: 
#1. The user should be asked to enter a number between 1 and 100. 
#2. f the number is 42, the game should print 'Correct!'. 
#3. If the number is less than 42, the game should print 'Too Low!' 
#4. If the number is greater than 42, the game should print 'Too High!' 
#5. The game should repeat until the user has found the correct number 

#This function prints a given error  

printError()      
{  
    echo -e "\033[31mERROR:\033[0m $1"  
}  

#This function will get a value between the 2nd and 3rd arguments  
getNumber()  
{   
    read -rp "$1: "  
    while (( "$REPLY" < $2 || "$REPLY" > $3 )); do  
        printError "Input must be between $2 and $3"  
        read -rp "$1: "  
    done  
}  

checkNumber() 
{ 
if [ "$REPLY" -eq "$1" ]; then 
    echo -e "Correct!" 
    exit 0
elif [ "$REPLY" -gt "$1" ]; then 
    echo -e "Too High!" 
else
     echo -e "Too Low!" 
fi  

}  

echo "this is the start of the script"   
valid=true 
while [ $valid ]; do 
    getNumber "please type a number between 1 and 100" 1 100 
    checkNumber 42
done 
exit 0

