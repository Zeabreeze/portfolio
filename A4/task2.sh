#!/bin/bash

#--------------------------------------------------------------
#Written by: Isaree Benjabawornnun
#Created Date: 22 Feb 2023
#Revised Date: 23 Feb 2023
#Overview:
#Since the raw data shows many companies with high records of 
#data breaches in millions.  It's interesting to find out if there
#will be any companies with less than 10,000 records of incident.
#Provide a list of companies that meet this requirement.
#---------------------------------------------------------------

awk 'BEGIN {
    FS=":";
    printf ("        \033[1m\033[33m%-70s\033[0m\n", "COMPANIES that have less than 10,000 incidents");
    print "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++\n";
}

{
    if($3 <= "10000") 
    printf ("\033[32m%-55s\033[0m\n",$1);
}
END { 
   
}' data1.txt 