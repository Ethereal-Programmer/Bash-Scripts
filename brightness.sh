#!/bin/bash

# This script is to edit the brightness on my Thinkpad T440 since i3wm likes to break my brightness keys.
# If you use this, I highly recommend you alias it to save yourself some time.

read -p "Enter Desired Brightness Value Between 0 and 851: " BRIGHTNESS_VALUE

echo ${BRIGHTNESS_VALUE} > /sys/class/backlight/intel_backlight/brightness
