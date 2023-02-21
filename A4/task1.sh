#!/bin/bash

#Output a list of companies that have records of value higher than 
#the input value (such as greater than 100 millions)
#read -rp "Enter a value" val
awk '{
if ($3 > 100,000,000)
printf "$1 -- $2 "
    
}' ./data1.txt