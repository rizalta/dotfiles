#!/bin/bash

if [ $# -eq 0 ]; then
	vpn_status=$(protonvpn-cli status)
	notConnected="No active Proton VPN connection."
	if [[ "$vpn_status" == *"$notConnected"* ]]; then
		protonvpn-cli c -f
	else
		protonvpn-cli d
	fi
	exit 0
fi

case $1 in
	f)
		protonvpn-cli c -f
		;;
	jp)
		protonvpn-cli c --cc JP
		;;
	us)
		protonvpn-cli c --cc US
		;;
	nl)
		protonvpn-cli c --cc NL
		;;
	d)
		protonvpn-cli d
		;;
	s)
		protonvpn-cli status
		;;
	\?)
		echo "Invalid option"
		exit 1
		;;
esac
