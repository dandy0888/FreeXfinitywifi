#!/bin/bash
#This script requires your DNS to be 75.75.75.75 so xfinitywifi can redirect you to the correct pages, also requires macchanger to be installed.

WIFIID=wlo1 #Enter your wifi ID here ("ip link show")
BROWSER=brave-dev #Enter your preferred browser browser here
sudo ip link set dev $WIFIID down
sudo macchanger -r $WIFIID
sudo ip link set dev $WIFIID up
sudo killall NetworkManager
sudo systemctl restart NetworkManager
$BROWSER 75.75.75.75
echo "Enter your login details and choose your hour pass in your browser!" ; notify-send "Enter your login details and choose your hour pass in your browser!"
