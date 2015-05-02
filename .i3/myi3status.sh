#!/bin/sh
# shell script to prepend i3status with more stuff

i3status | while :
do
        read line
        brigth=$(cat /sys/class/backlight/acpi_video0/brightness)
        echo "$brigth | $line" || exit 1
done
