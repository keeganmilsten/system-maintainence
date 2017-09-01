#!/bin/bash

yad --title "System Maintainence" --form --text "Clean Your System" --center --width=400 --height=100  \
--button="Clear Cache":"xterm -e sudo pacman -Scc --noconfirm" \
--button="Clean Journal":"xterm -e sudo journalctl --vacuum-time=3d && sync" \
