#!/bin/sh
#info: Show Windows license key

# must run as build in admin
if [ "$(id -u 544)" -ne 544 ]; then
    echo 'This script must be run as admin!' >&2
    exit 1
fi

KEY_PATH="HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion"
KEY=$(reg query "$KEY_PATH" /v ProductId | grep 'ProductId' | awk '{print $3}')

echo "ProductId: $KEY"
