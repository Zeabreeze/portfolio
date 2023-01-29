#!/bin/bash

#Get an UV index level input from the user 
read -p "Enter a UV index value from 0 to 11:  "  uvvalue


# Check UV index level
    # -le for if UV level is less than 2 (Low)
if [ "$uvvalue" -le 2 ]; then
    echo "UV level is Low.  Minimal protection is required."

    # Set a condition to check for moderate UV index level
elif [[ "$uvvalue" -ge 3 ]] && [[ "$uvvalue" -le 7 ]]; then
    echo "UV level is Moderate to High.  Standard protection is required."
    
    # Check for high to extreme UV index level
elif [[ "$uvvalue" -ge 8 ]] && [[ "$uvvalue" -le 11 ]]; then
    echo "UV level is Very High to Extreme.  Full protective measures are required."

    # For a different value enters, shows this message
else
    echo "Invalid UV index value emtered."
fi

exit 0