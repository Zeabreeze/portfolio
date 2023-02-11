#!/bin/bash
mkdir toasty
echo "test" > items
if [ -e "items" ]; then
    echo -n "Exists"
    if [ -f "items" ]; then
        echo "File"
    fi 
elif [ -d toasty ]; then
    echo "Directory"
fi 