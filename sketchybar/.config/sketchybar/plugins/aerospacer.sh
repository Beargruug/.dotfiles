#!/bin/bash

SPACE_ICONS=("1" "3" "5" "8")

for sid in "${SPACE_ICONS[@]}"; do
    if [ "$sid" = "$FOCUSED_WORKSPACE" ]; then
        sketchybar --set space.$sid background.drawing=on
    else
        sketchybar --set space.$sid background.drawing=off
    fi
done
