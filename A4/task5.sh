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
     count=0;
        { 
            if ($1 ~ /University*/)
            count+=1
        }
    }
    END {
        printf ("Number of University effected so far in data breaches:", count);
    }' data1.txt