#!/bin/bash 

#--------------------------------------------------------------
#Written by: Isaree Benjabawornnun
#Created Date: 13 Feb 2023
#Revised Date: 19 Feb 2023
#Overview:
#This script designs to scrape a selected web page:
#https://en.wikipedia.org/wiki/List_of_data_breaches 
#and prepare the output for further data analysis.
#--------------------------------------------------------------

#set variables 
outf="data.txt" 
url="https://en.wikipedia.org/wiki/List_of_data_breaches" 
val1="Entity"
val2="References[edit]"

#Scrape the web page and save as a raw data file
get_webpage()  {
    curl -o $outf $url &>/dev/null
    check_error
}   

#clean the data, leave only what needed in the file
clean_html() { 
    cat $outf | sed -e 's/<[^>]*>//g' | 
    sed -n '/'$val1'/,$p' | 
    sed -n '/'"$val2"'/q;p' > ./temp.txt && cp ./temp.txt $outf 
} 

#check the content of file while processing 
print_check() { 
    echo "all done!"  
    while read -r check; do
        echo "${check}" 
    done < $outf 
} 

#checking for errors 
check_error() { 
    [ $? -ne 0 ] && echo "Error Downloading…" && exit 1
} 

#------------------------
    #Run the functions
#------------------------

get_webpage 
clean_html 
#print_check