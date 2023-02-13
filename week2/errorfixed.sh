#!/bin/bash  

# A script to give a set value and asking a user to enter the secret word
# if the user gets it right, then the appropriate script rersponse.


# set the value, don't tell anyone!
secret='shhh'   

read -s -p "what's the secret code? -> "  REPLY
echo $REPLY

#if the user types in the correct secret, tell them they got it right!  
if [ "$secret" = $REPLY ]; then  

    echo "You got it right!" 

    correct=true 

else   
    echo "You got it wrong :("  

    correct=false 

fi  

case $correct in  
false)  
    #people who get it wrong need to be told to go away!
    echo "Go Away!"   
    ;;  

true)  
    #TODO: add a secret menu for people in the know. 
    echo "you have unlocked the secret menu!"  
     
    ;;  

esac  