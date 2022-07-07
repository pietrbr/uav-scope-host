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

# MATTEO
#sudo ip route add 172.16.0.0/24 via 10.241.115.153
#sudo ip route add 240.0.0.0/8 via 10.241.115.153

# PIETRO
sudo ip route add 172.16.0.0/24 via 10.244.105.96
sudo ip route add 10.76.105.0/8 via 10.244.105.96
#sudo ip route add 240.0.0.0/8 via 10.244.105.96

lxc restart $1
lxc exec $1 bash


