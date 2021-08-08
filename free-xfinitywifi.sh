#!/bin/bash
#This script requires your DNS to be 75.75.75.75, because it's only the only whitelisted DNS server,
#this script also requires macchanger to be installed,
#and lastly, this script requires root permissions.

WIFI-ID=wlo1 #Enter your wifi card's ID here ("ip link show")
BROWSER=firefox #Enter your preferred browser browser here
ip link set dev $WIFI-ID down
macchanger -r $WIFI-ID
ip link set dev $WIFI-ID up
systemctl restart NetworkManager
$BROWSER 75.75.75.75
echo "Enter your login details and choose your hour pass in your browser!" ; notify-send "Enter your login details and choose your hour pass in your browser!"
