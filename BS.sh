#!/bin/bash

if [[ $# -eq 0 ]]; then
    echo 'No parameter passed: rememeber to pass the name of the container!'
    exit 0
elif [[ ! $# -eq 1 ]]; then
	echo 'Too many parameters passed, retry'
	exit 1
fi

# IP RULES
# 1 - reroute traffic going to ue container LTE network
#     through gnb container LTE interface
# 2 - reroute traffic going to ue bridge network
#     through gnb container LTE interface
sudo ip route add $IP_B0 via $IP_A153
sudo ip route add $IP_C0 via $IP_A153

lxc restart $1
lxc exec $1 bash


