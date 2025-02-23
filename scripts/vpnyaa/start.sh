#!/bin/bash

path=/home/rizal/scripts/vpnyaa
default_server="pl"
server=${1:-$default_server}

cp ~/.config/vopono/proton/openvpn/auth.txt $path/auth.txt
export SUDO_ASKPASS=$path/askpass.sh

kitty -e $path/vpnyaa &
vopono -A exec --provider ProtonVPN --server "$server" --allow-host-access --firewall iptables "nyaa -c=$path"

echo "STOP" | nc localhost 8899
cp $path/auth.txt ~/.config/vopono/proton/openvpn/auth.txt
