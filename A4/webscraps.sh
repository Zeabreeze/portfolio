#!/bin/bash 

#A script to get a web page for scraping 
# Usually to display a result in the terminal 
#Curl https://en.wikipedia.org/wiki/List_of_data_breaches 

#curl=$(which curl) 
outf="./output.txt" 
#name=$( echo $1 | tr ' ''+' ) 
#url="https://books.toscrape.com/" 
url="https://books.toscrape.com/index.html" 
#val1="--$1 "

webpage()  {
#however, we want to save the web scrap output to a file for further analysis
curl -o $outf $url &>/dev/null
check_error
}   

#Cat output.txt 
#Cat output.txt | grep "<p>" 

#clean the web page 
strip_html() { 
#grep "<p>" $outfile | sed -i 's' 
#grep "<p>" $outf | 
cat $outf | sed -e 's/<[^>]*>//g' > ./temp.txt 
#&& cp ./temp.txt $outf 
#sed -i "s/$val1/\n/g" $outf

} 

#loop through content of file 
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

######
#MAIN#
######

webpage 
strip_html 
print_check

#END 