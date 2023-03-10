#!/bin/bash

# Section 5.5 - a script to take a look at the “/etc/passwd” file 
# and format it into a neat table similar to the one from task 5.4. 
# This is a 'Step 4: Use Regex to filter.
# Written by: Isaree Benjabawornnun

# First read /etc/passwd to a text file for further analysis
cat /etc/passwd > data.txt

# Fomat and display the table header
# Using a field separator ":" to output values to the table
# Allow colour formatting and spacing for a nice looking table
# Use Regex to make the awk script filter the data to 
# only show users who have “/bin/bash” listed as their default shell.
#-------------------------------------------------------------------- 

echo -e "User Accounts:"  
awk 'BEGIN {  
    FS=":";  
    print "___________________________________________________________________________________\n";  
    printf("|\033[34m%-16s\033[0m|\033[34m%-11s\033[0m|\033[34m%-11s\033[0m|\033[34m%-30s\033[0m | \033[34m%-13s\033[0m\n", "Username", "UserID", "GroupID", "Home", "Shell");  
    print "-----------------------------------------------------------------------------------\n";
}

{  
    if($NF == "/bin/bash")
    printf("|\033[33m%-16s\033[0m | \033[35m%-9s\033[0m |\033[32m%-9s\033[0m |\033[31m%-30s\033[0m |\033[32m%-19s\033[0m\n", $1, $3, $4, $6, $7);  
}  
END {  
    print("______________________________________________________________________________________________");  
}' data.txt  
