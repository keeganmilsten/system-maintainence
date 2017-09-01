eval exec yad --title="System Maintenance" --image=drive-harddisk --text="Disk\ usage:" --buttons-layout=end --width=650 --multi-progress \
$(df -hT $1 | tail -n +2 | awk '{printf "--bar=\"<b>%s</b> (%s - %s) [%s/%s]\" %s ", $7, $1, $2, $4, $3, $6}')

--button="Clear Cache":"xterm -e sudo pacman -Scc --noconfirm" \
--button="Clean Journal":"xterm -e sudo journalctl --vacuum-time=3d && sync" \
