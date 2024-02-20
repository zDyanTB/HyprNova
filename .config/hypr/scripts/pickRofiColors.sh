#!/bin/bash

wal_dir="$HOME/.cache/wal/"
rofi_dir="$HOME/.config/rofi"

# Check if colors-rofi files exist

if ! (ls "${wal_dir}" | grep -q -e "colors-rofi*"); then
    echo "Pywal: rofi.rasi colors not found"
    echo "Quitting..."
    sleep 5
    exit
fi

# Check if rofi/colors folder exists, create if not
if [ ! -d "$rofi_dir/colors" ]; then
    echo ".config/rofi/colors not found. Creating now"
    mkdir "$rofi_dir/colors"
fi

echo "Getting dark colors"

head -n 29 "$wal_dir/colors-rofi-dark.rasi" > "$rofi_dir/colors/pywal-dark.rasi" &&
echo "pywal-dark.rasi copied to $rofi_dir"


echo "Getting light colors"

head -n 29 "$wal_dir/colors-rofi-light.rasi" > "$rofi_dir/colors/pywal-light.rasi" &&
echo "pywal-light.rasi copied to $rofi_dir"