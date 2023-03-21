#!/bin/bash

if [[ $# -eq 0 ]]; then
    echo 'No parameter passed: rememeber to pass the name of the container!'
    exit 0
elif [[ ! $# -eq 1 ]]; then
    echo 'Too many parameters passed, retry'
    exit 1
fi

# IP RULES
# 1 - reroute traffic going to gnb bridge network
#     through gnb container LTE interface

sudo ip route add 10.244.105.0/24 via 10.76.105.68

lxc restart $1
lxc exec $1 bash
