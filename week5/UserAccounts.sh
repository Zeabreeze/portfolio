#!/bin/bash

# Section 5.5 - a script to take a look at the “/etc/passwd” file 
# and format it into a neat table similar to the one from task 5.4. 
# This is a 'Step 3: Write UserAccounts.sh' script.
# Written by: Isaree Benjabawornnun

# First read /etc/passwd to a text file for further analysis
cat /etc/passwd > data.txt

# Fomat and display the table header
# Using a field separator ":" to output values to the table
# Allow colour formatting and spacing for a nice looking table
echo -e "User Accounts:"  
awk 'BEGIN {  
    FS=":";  
    print "______________________________________________________________________________________________\n";  
    print "|    \033[34mUsername\033[0m     |  \033[34mUserID\033[0m   |  \033[34mGroupID\033[0m |               \033[34mHome\033[0m              |      \033[34mShell\033[0m";  
    print "______________________________________________________________________________________________\n";  
}  


{  
    printf("|\033[33m%-16s\033[0m | \033[35m%-9s\033[0m |\033[32m%-9s\033[0m |\033[31m%-32s\033[0m |\033[32m%-19s\033[0m\n", $1, $3, $4, $6, $7);  
}  
END {  
    print("______________________________________________________________________________________________");  
}' data.txt  
