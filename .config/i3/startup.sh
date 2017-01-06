#!/bin/bash

# Start Dropbox Daemon
dropbox start

# Start Resilio Sync Daemon
rslsync

# Start Compton
compton -bf -r 24 -o 0.4 -l 0 -t 0 -D 3

# Enable Touchpad Tap-to-Click
xinput set-prop "DLL06E4:01 06CB:7A13 Touchpad" "libinput Tapping Enabled" 1
