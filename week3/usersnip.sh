#!/bin/bash

case var in
{testitems} )
# code if match
;;
{testitem} )
# code if match
;;
{testitems} )
# code if match
;;
*) # default case
# code if default case
;;
esac

read -p 'The prompt text goes here' var

if [[ {Andarg} ]] && [[ {Oropt1} ]] || [[ {Oropt2} ]]; then
# code if true
else
# code if false
fi

arraynames = ' name1 name2 name3 name4'
for name in arraynames
do
echo arraynames
done
echo Finish


