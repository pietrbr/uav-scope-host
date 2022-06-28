#! /bin/bash

lxc stop $1

# enable USB connection to radio
lxc config set $1 raw.lxc "lxc.cgroup.devices.allow=c 189:* rwm"
lxc config device add $1 b210usb usb mode="0777"

# enable real-time processing
lxc config set $1 limits.kernel.rtprio ""99""
lxc config set $1 security.privileged ""true""
lxc start $1
