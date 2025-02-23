#!/bin/bash

DEFAULT_SERVER="pl"
SERVER=${1:-$DEFAULT_SERVER}

VPNYAA_PATH=/home/rizal/scripts/vpnyaa
export SUDO_ASKPASS=$VPNYAA_PATH/askpass.sh
cp ~/.config/vopono/proton/openvpn/auth.txt $VPNYAA_PATH/auth.txt

vopono -A  exec --provider ProtonVPN --server "$SERVER" --firewall iptables "firefox --private-window -P vpn" 

cp $VPNYAA_PATH/auth.txt ~/.config/vopono/proton/openvpn/auth.txt
