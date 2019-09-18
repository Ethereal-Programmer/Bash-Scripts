#!/bin/bash

read -p "Enter Desired Brightness Value Between 0 and 851: " BRIGHTNESS_VALUE

echo ${BRIGHTNESS_VALUE} > /sys/class/backlight/intel_backlight/brightness
