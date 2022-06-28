#!/bin/bash
sudo ip route add 10.241.115.0/24 via 240.84.80.231
lxc exec ue bash
