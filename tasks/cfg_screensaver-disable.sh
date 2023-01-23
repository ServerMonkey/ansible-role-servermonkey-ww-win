#!/bin/sh
#info: Disable Screen Saver

# must run as build in admin
if [ "$(id -u 544)" -ne 544 ]; then
    echo 'This script must be run as admin!' >&2
    exit 1
fi

regtool set "\HKEY_CURRENT_USER\Control Panel\Desktop\ScreenSaveActive" -s "0"
