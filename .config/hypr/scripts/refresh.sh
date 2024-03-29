#!/usr/bin/env bash
## /* ---- 💫 https://github.com/JaKooLit 💫 ---- */  ##
# Scripts for refreshing waybar, rofi, swaync, pywal colors

# Kill already running processes
_ps=(waybar rofi swaync)
for _prs in "${_ps[@]}"; do
    if pidof "${_prs}" >/dev/null; then
        pkill "${_prs}"
    fi
done

sleep 0.2
# Relaunch waybar
waybar > /dev/null 2>&1 &

# relaunch swaync
sleep 0.2
swaync > /dev/null 2>&1 &

# for cava-pywal (note, need to manually restart cava once wallpaper changes)
ln -sf "$HOME/.cache/wal/cava-colors" "$HOME/.config/cava/config" || true

exit 0
