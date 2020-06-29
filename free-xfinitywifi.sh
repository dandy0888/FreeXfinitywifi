#!/bin/bash
#This script requires your DNS to be 75.75.75.75 so xfinitywifi can redirect you to the correct pages, also requires macchanger to be installed.

WIFICARD=wlo1 #Enter your wifi card here ("ip link show")
BROWSER=brave-dev #Enter your browser here
sudo ip link set dev $WIFICARD down
sudo macchanger -r $WIFICARD
sudo ip link set dev $WIFICARD up
sudo killall NetworkManager
sudo systemctl restart NetworkManager
$BROWSER 75.75.75.75
echo "Enter login details and choose your hour pass in your browser!"
