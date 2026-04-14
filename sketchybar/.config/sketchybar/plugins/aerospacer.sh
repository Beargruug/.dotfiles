#!/bin/bash

SPACE_ICONS=("1" "2" "3" "5")

for sid in "${SPACE_ICONS[@]}"; do
    if [ "$sid" = "$FOCUSED_WORKSPACE" ]; then
        sketchybar --set space.$sid background.drawing=on
    else
        sketchybar --set space.$sid background.drawing=off
    fi
done
