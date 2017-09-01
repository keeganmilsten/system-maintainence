#!/bin/bash

nupdates=`checkupdates | wc -l`
updates=`checkupdates`
official=`pacman -Qqtd | grep -Fv -f <(pacman -Qqtdm)`
unofficial=`pacman -Qqmtd`
fethcmirrors=`yes | sudo fetchmirrors --country US`
cache=`sudo pacman -Scc --noconfirm`

yad --title "System Maintainence" --form --scroll --center --width=400 --height=100 --text "$nupdates New package(s) to upgrade: 

$updates

Unnecessary package(s):

$official
$unofficial" \
--button="Update":"xterm -e sudo pacman -Syu --noconfirm" \
--button="Update AUR":"xterm -e yaourt -Syu --aur --noconfirm" \
--button="Remove unnecessary packages":"xterm -e sudo yaourt -Qtd --noconfirm" \
--button="Clean System":"clean2.sh" \
--button="View Storage":"clean.sh" \
--button="Rank Mirrors":"xterm -e sudo fetchmirrors --country US" \
