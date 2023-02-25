#!/bin/bash

awk 'BEGIN {
    FS=":"; 
    total = 0;
    i = 1
        { 
            for(i=1;i<=NF;i++)
                if ($1 ~ /University*/)
                total = total + $i
                i++
        }
}
    END {
    
        print ("Number of University effected so far in data breaches:", total);
    }' data1.txt