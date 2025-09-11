#!/bin/bash

# Recive 2fa code like argument
if [ -z "$1" ]; then
    echo "Usage: $0 <2fa_code>"
    exit 1
fi

# Mount protondrive with rclone

/bin/rclone mount JhairCloud: ~/JhairCloud --vfs-cache-mode full --protondrive-2fa $1
