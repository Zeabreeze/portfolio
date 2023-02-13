#!/bin/bash

# a script function to print text with colour
function prettyprint()
{
     echo -e "message: \033[32m$1\033[00m"
}

prettyprint "hello"
prettyprint "This is important."
