#!/bin/bash

Ipaddress=$(./Ipinfo.sh)

addresses=$(echo "$Ipaddress" | sed -n '/IP Address:/p')

echo -e "The IP addresses on this computer are:\n$addresses"
