#!/bin/bash

#--------------------------------------------------------------
#Written by: Isaree Benjabawornnun
#Created Date: 22 Feb 2023
#Revised Date: 23 Feb 2023
#Overview:
#A small query to find a total of how many University in the list 
#effected by data breaches
#--------------------------------------------------------------

awk ' BEGIN {count=0;}  
    { if ($1 ~ /University*/) count+=1} 
    END { printf ("\033[34mNumber of University effected so far in data breaches:\033[0m");
    printf ("\033[35m%-5s\033[0m\n", count)}' data1.txt