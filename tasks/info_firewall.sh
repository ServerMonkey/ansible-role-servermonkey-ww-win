#!/bin/sh
#info: Show Windows firewall status

# must run as build in admin
if [ "$(id -u 544)" -ne 544 ]; then
    echo 'This script must be run as admin!' >&2
    exit 1
fi

netsh firewall show state | grep 'Operational mode' | awk -F '=' '{print $2}'
