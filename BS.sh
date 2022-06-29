#!/bin/sh

if [[ $# -eq 0 ]]; then
    echo 'No parameter passed: rememeber to pass the name of the container!'
    exit 0
elif [[ ! $# -eq 1 ]]; then
	echo 'Too many parameters passed, retry'
	exit 1
fi

sudo ip route add 172.16.0.0/24 via 10.241.115.153
sudo ip route add 240.0.0.0/8 via 10.241.115.153
lxc restart $1
lxc exec $1 bash


