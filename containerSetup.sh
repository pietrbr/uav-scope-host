#! /bin/bash

if [[ $# -eq 0 ]]; then
    echo 'No parameter passed: rememeber to pass the name of the container!'
    exit 0
elif [[ ! $# -eq 1 ]]; then
    echo 'Too many parameters passed, retry'
    exit 1
fi

lxc stop $1

# enable USB connection to radio
echo 'Trying to add radio device...'
lxc config set $1 raw.lxc "lxc.cgroup.devices.allow=c 189:* rwm"
lxc config device add $1 b210usb usb mode="0777"

# enable real-time processing
echo 'Enabling real time processing'
lxc config set $1 limits.kernel.rtprio ""99""
lxc config set $1 security.privileged ""true""
lxc start $1
