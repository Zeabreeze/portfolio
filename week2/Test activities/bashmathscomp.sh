#!/bin/bash

#Get inputs from a user for the two values comparison
read -p "Type the first integer for comparison:  "  val_a
read -p "Type the second integer for comparison:  "  val_b

# set a conditional comparison
    # -eq demonstration
if [ "$val_a" -eq "$val_b" ]; then
    echo "The integers are the same."
# -ne demonstration
elif [ "$val_a" -ne "$val_b" ]; then
    echo "The integers are not the same."
# -gt demonstration
elif [ "$val_a" -gt "$val_b" ]; then
    echo "The first interger is greater than the second one."
else
    echo "They are not valid numbers for comparison."
fi

exit 0