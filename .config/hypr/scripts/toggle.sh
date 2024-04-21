#!/usr/bin/env bash

icons="$HOME/.config/swaync/icons"

toggle_animations(){
    animations=$(hyprctl -j getoption animations:enabled | jq ".int")

    if [ "${animations}" == "1" ]; then
        hyprctl keyword animations:enabled 0
        notify-send -e -u low -i "$icons/bolt.png" "Animations disabled"
        return 0
    else
        hyprctl keyword animations:enabled 1
        notify-send -e -u low -i "$icons/bolt.png" "Animations enabled"
        return 0
    fi
}

toggle_blur() {
    blur=$(hyprctl -j getoption decoration:blur:enabled | jq ".int")

    if [ "${blur}" == "1" ]; then
        hyprctl keyword decoration:blur:enabled 0
        notify-send -e -u low -i "$icons/wand.png" "Blur disabled"

        return 0
    else
        hyprctl keyword decoration:blur:enabled 1
        notify-send -e -u low -i "$icons/wand.png" "Blur enabled"
        return 0
    fi
}

toggle_gamemode() {

drop_shadow=$(hyprctl -j getoption decoration:drop_shadow | jq ".int")
rounding=$(hyprctl -j getoption decoration:rounding | jq ".int")

toggle_animations
toggle_blur

    if [[ "${drop_shadow}" != "0" || "${rounding}" != "0" ]] ; then
                
        hyprctl --batch "\
            keyword decoration:drop_shadow 0;\
            keyword general:gaps_in 0;\
            keyword general:gaps_out 0;\
            keyword general:border_size 1;\
            keyword decoration:rounding 0"

        swww kill 
        notify-send -e -u normal -i "${icons}/gamemode.png" "Gamemode enabled."
        return 0
    else
        sleep 0.2
        swww init && swww img "$HOME/.current_wallpaper"
        sleep 0.2
        ./pywal.sh
        sleep 0.2
        ./refresh.sh
        notify-send -e -u normal -i "${icons}/gamemode.png" "Gamemode disabled"
        
        return 0
    fi
}

for opt in $@; do
    case "$opt" in
        animations)
            sleep 0.2
            toggle_animations;;
        blur)
            sleep 0.2
            toggle_blur;;
        gamemode)
            sleep 0.2
            toggle_gamemode;;
        *)
            sleep 0.2
            hyprctl reload
            echo "Default"
            exit;;
    esac
done
