#!/bin/bash

sketchybar --add event aerospace_workspace_change
RED=0xffed8796
SPACE_ICONS=("1" "3" "5" "8")

for sid in "${!SPACE_ICONS[@]}"
do
    sketchybar --add item space.${SPACE_ICONS[$sid]} left \
        --subscribe space.${SPACE_ICONS[$sid]} aerospace_workspace_change \
        --set space.${SPACE_ICONS[$sid]} \
        icon="${SPACE_ICONS[$sid]}" \
        icon.padding_left=4 \
        icon.padding_right=4 \
        label.padding_right=7 \
        background.color=0xffc8c3bd \
        background.corner_radius=5 \
        background.height=16 \
        background.padding_left=7 \
        background.padding_right=7 \
        background.drawing=off \
        label.font="sketchybar-app-font:Regular:16.0" \
        label.background.height=20 \
        label.background.drawing=on \
        label.background.color=0xffc8c3bd \
        label.background.corner_radius=5 \
        label.drawing=off \
        click_script="aerospace workspace ${SPACE_ICONS[$sid]}" \
        script="$CONFIG_DIR/plugins/aerospacer.sh ${SPACE_ICONS[$sid]}"
done
