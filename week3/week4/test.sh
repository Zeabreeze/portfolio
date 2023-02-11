#!/bin/bash
mkdir toasty
echo "test" > items
if [ -e toasty ]; then
    echo "Exists"
    if [ -f "test" ]; then
        echo "File"
    fi 
elif [ -d toasty ]; then
    echo "Directory"
fi
