#!/bin/bash 

 # Section 5.2 excercise
 # Create a script named “regexes.sh” and write grep -r statements to search your work for the following patterns: 
 #   all sed statements 
 #   all lines that start with the letter m 
 #   all lines that contain three digit numbers 
 #   all echo statements with at least three words 
 #   all lines that would make a good password (use your knowledge of cybersecurity to decide what makes a good password). 

var=0
path=~/scripts/portfolio/
while [ $var != 1 ]
do 

echo -e "Please make your selections below to search in the portfoio folder"
echo -e " 1. Finding sed statements "
echo -e " 2. Finding all lines that start with the letter 'm'"
echo -e " 3. Finding all lines that contain three digit numbers"
echo -e " 4. Finding all echo statements with at least three words"
echo -e " 5. Finding all lines that would make a good password"
read -rp " PLease enter the option: " choice

case "$choice" in 

1) 
# searching for all sed statements 
    grep -r -wG '\ssed' $path > grep1.txt
    exit 0
;;

2)  
#Show only lines that start with 'm' 
    grep -r -E '^m' $path > grep2.txt 
    exit 0
;;

3) 
# all lines that contain three digit numbers 
    grep -r -oE '[[:digit:]]{3}' $path > grep3.txt
    exit 0
;; 

4) 
#all echo statements with at least three words 
    grep -r -oE '^echo(\w+\W+){0,3}(\W+\w+){0,3}' $path > grep4.txt
    exit 0
;;
5)
#all lines that would make a good password 
    #grep -r -eE '^(?=.[a-z])(?=.[0-9])(?=(.*?[A-Z]){3}))\w{6,13}$' $path > grep5.txt
    grep -r -eoE '(?=.*[a-z])(?=.*[A-Z])(?=.*[0-9])(?=.*[a-zA-Z0-9])[^\s]{8,}' $path > grep5.txt
    exit 0
;;

*) 
    echo -e "not valid option.."

esac 

done

exit 0