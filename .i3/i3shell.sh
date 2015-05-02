#!/bin/bash
ID=$(xdpyinfo | grep focus | cut -f4 -d " ")
ID2=$(xdpyinfo | grep focus)
PID=$(xprop -id $ID | grep -m 2 PID | cut -d " " -f3 | tail -n1)
PID2=$(xprop -id $ID | grep -m 2 PID)
ZSH=$(ps --ppid $PID | grep zsh | cut -f2 -d " ")
ZSH2=$(ps --ppid $PID | grep zsh)
echo $ZSH2 > ~/.i3/tmp
ZSH=$(cat ~/.i3/tmp | cut -f1 -d " ")


echo $ID2 > ~/.i3/logi3shell
echo $ID >> ~/.i3/logi3shell
echo $PID2 >> ~/.i3/logi3shell
echo $PID >> ~/.i3/logi3shell
echo $ZSH2 >> ~/.i3/logi3shell
echo $ZSH >> ~/.i3/logi3shell

if [ -e "/proc/$ZSH/cwd" ]
then
        REAL_PATH=$(ls -l /proc/$ZSH/cwd | rev |cut -f 1 -d " " | rev)
        echo $REAL_PATH >> ~/.i3/logi3shell
        xterm -e "cd $REAL_PATH; zsh" &
else
        xterm
fi
