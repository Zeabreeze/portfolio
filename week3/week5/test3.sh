#!/bin/bash
# this script will repeat one million times
count=1
for((i=0; i<100; i++))
do 
    for((j=0; j<100; j++))
    do 
        for((k=0; k<100; k++))
        do 
            echo "repeated $count times"
            (( count++ ))
        done
    done
done
exit 0    