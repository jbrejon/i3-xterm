#!/bin/sh

xset r rate 200 25
xset m 0 0
xset s off
xsetroot -cursor_name left_ptr
setxkbmap -rules evdev -model evdev -layout us -variant altgr-intl
xrdb ~/.Xresources
exec i3 -V >> ~/.i3/i3log 2>&1
