#!/bin/bash

NAME="slack"
STATUS_LABEL=$(lsappinfo info -only StatusLabel "Slack")
ICON="󰒱"
ICON_COLOR="0xffffffff"

if [[ $STATUS_LABEL =~ \"label\"=\"([^\"]*)\" ]]; then
    LABEL="${BASH_REMATCH[1]}"
else
    exit 0
fi

sketchybar --set $NAME icon=$ICON label="${LABEL}" icon.color=${ICON_COLOR}
