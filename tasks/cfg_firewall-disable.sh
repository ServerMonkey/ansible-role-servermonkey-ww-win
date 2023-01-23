#!/bin/sh
#info: Disable Windows firewall

# must run as admin
if [ "$(id -u 544)" -ne 544 ]; then
    echo 'This script must be run as admin!' >&2
    exit 1
fi

netsh firewall set opmode disable 1>/dev/null
