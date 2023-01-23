#!/bin/sh
#info: Enable Windows firewall

# must run as build in admin
if [ "$(id -u 544)" -ne 544 ]; then
    echo 'This script must be run as admin!' >&2
    exit 1
fi

netsh firewall set opmode enable 1>/dev/null
