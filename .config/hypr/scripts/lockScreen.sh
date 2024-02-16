#!/bin/bash
# Get colors from pywal
source "$HOME/.cache/wal/colors.sh"

# Set swaylock with following colors
swaylock \
  --clock \
  --indicator \
  --indicator-radius 200 \
  --indicator-thickness 10 \
  --effect-scale 0.4 \
  --effect-blur 6x4 \
  --effect-vignette 0.6:0.6 \
  --inside-color "00000000" \
  --inside-clear-color 00000000 \
  --inside-ver-color 00000000 \
  --inside-wrong-color 00000000 \
  --key-hl-color "$color2" \
  --bs-hl-color "$color2" \
  --ring-color "$color4" \
  --ring-clear-color "$color8" \
  --ring-wrong-color "$color5" \
  --ring-ver-color "$color3" \
  --line-uses-ring \
  --line-color "$color5" \
  --font 'Fira Code Medium' \
  --text-color "$color4" \
  --text-clear-color "$color8" \
  --text-wrong-color "$color5" \
  --text-ver-color "$color2" \
  --separator-color 00000000 \
  --grace 2 \
  --grace-no-mouse \
  --fade-in 0.3
