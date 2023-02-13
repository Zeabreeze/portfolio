#!/bin/bash    

# Testing script on how Awk command works
echo "Google Server IPs:"  
awk '{  
    print $1  
}' input.txt  