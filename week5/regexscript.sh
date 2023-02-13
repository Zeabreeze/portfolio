#!/bin/bash 

 # Section 5.2 excercise
 # Create a script named “regexes.sh” and write grep -r statements to search your work for the following patterns: 
 #   all sed statements 
 #   all lines that start with the letter m 
 #   all lines that contain three digit numbers 
 #   all echo statements with at least three words 
 #   all lines that would make a good password (use your knowledge of cybersecurity to decide what makes a good password). 

var=0
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
# Testing script on how Awk command works
    grep -r '^sed' ~/scripts/portfolio/week4 > grep1.txt
   # GREP_COLOR='1;35' grep --color=always 
    exit 0
;;

2)  
#Show only lines that start with 'm' 
    grep -r -E "^m" ~/scripts/portfolio/week3 > grep2.txt
   # GREP_COLOR='1;32' grep --color=always 
    exit 0
;;

3) 
# all lines that contain three digit numbers 
    #grep -r -E 'echo+{3}$'  ~/scripts/portfolio/week4 > grep3.txt
    grep -r -e '[0-9]\d\d\d' ~/scripts/portfolio > grep3.txt
  #  GREP_COLOR='1;37' grep --color=always 
    exit 0
;; 

4) 
#all echo statements with at least three words 
    #grep -r -w -e 'echo+{3}' ~/scripts/portfolio/ > grep4.txt
    grep -r -w -e 'echo+word1|word2|word3' ~/scripts/portfolio/ > grep4.txt
 #   GREP_COLOR='1;36' grep --color=always  
   # grep -r '.*\"[A-Z]|.*\"[1-9]"' ~/scripts/portfolio/ > grep4.txt
    exit 0
;;
5)
#all lines that would make a good password 
    grep -r -e '.[a-z A-Z 0-9]{18}' ~/scripts/portfolio/ > grep5.txt
 #   GREP_COLOR='1;30' grep --color=always  
    exit 0
;;

*) 
    echo -e "not valid option.."

esac 

done

#read -rp  "output to screen or to file? Select 's' for screen, 'f' for file:" opt

#if [[ $opt == "s" ]]; then 
    #printf  
#exit 0 
#else
#if [ $opt == 'f' ]; then  

# printf > output.txt 

#exit 0 

#fi

exit 0