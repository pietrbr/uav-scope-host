#!/bin/sh
sudo ip route add 172.16.0.0/24 via 10.241.115.153
sudo ip route add 240.0.0.0/8 via 10.241.115.153
lxc restart BaseStation
lxc exec BaseStation bash


