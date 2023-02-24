#!/bin/bash

#--------------------------------------------------------------
#Written by: Isaree Benjabawornnun
#Created Date: 22 Feb 2023
#Revised Date: 23 Feb 2023
#Overview:
#Provide a list of companies that are effected.  These companies
#are in healthcare sector.
#--------------------------------------------------------------

awk 'BEGIN {  
    FS=":";  
    printf "\033[1m*--- List of companies in a health care sector effected by data breaches ---*\033[0m\n";  
    print "____________________________________________________________________________\n";  
    printf("|\033[34m%-50s\033[0m |  \033[34m%-6s\033[0m| \033[34m%-12s\033[0m|\n", "Entity", "Year", "Records");  
    print "----------------------------------------------------------------------------\n";
}

{  
    #if the companies are in healthcare sector
    if($4 == "healthcare")
    printf("|\033[33m%-50s\033[0m | \033[35m%-6s\033[0m| \033[32m%-13s\033[0m|\n", $1, $2, $3);  
}  
END {  
    print("_____________________________________________________________________________");  
}' data1.txt  