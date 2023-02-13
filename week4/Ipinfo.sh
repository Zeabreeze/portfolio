#!/bin/bash

# IPConfig script from Section 4.5.
#The “ifconfig” command displays 
#information about a computer’s networking information
net_info="$(ifconfig)"

#Three s commands exist to substitute text in the output 
#into a format that is clear to read.
#The p command exists to print lines that have been processed 
#by sed and the -n flag is used to not print lines that have not been processed.

addresses=$(echo "$net_info" | sed -n '/inet / {
    s/inet/IP Address:/
    s/netmask/\n\t\tSubnet Mask:/
    s/broadcast/\n\t\tBroadcast Address/
    p
    }')
    
    # Ouput the IP address as required
    echo -e "The IP addresses on this computer are:\n$addresses"


