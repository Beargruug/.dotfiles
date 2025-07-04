#!/bin/bash
# Rose Pine https://rosepinetheme.com/palette/ingredients/
ROSEPINE=(
  blue "#7283CF"
  teal "#419BBE"
  cyan "#9ccfd8"
  grey "#524f67"
  green "#B4D99C"
  yellow "#f6c177"
  orange "#d7827e"
  red "#eb6f92"
  purple "#c4a7e7"
  maroon "#b4637a"
  black "#26233a"
  trueblack "#000000"
  white "#e0def4"
)
COLORS=("${ROSEPINE[@]}")
getcolor() {
  COLOR_NAME=$1
  local COLOR=""

  if [[ -z $2 ]]; then
    OPACITY=100
  else
    OPACITY=$2
  fi

  # Loop through the array to find the color hex by name
  for ((i = 0; i < ${#COLORS[@]}; i += 2)); do
    if [[ "${COLORS[i]}" == "$COLOR_NAME" ]]; then
      COLOR="${COLORS[i + 1]}"
      break
    fi
  done

  # Check if color was found
  if [[ -z $COLOR ]]; then
    echo "Invalid color name: $COLOR_NAME" >&2
    return 1
  fi

  echo $(PERCENT2HEX $OPACITY)${COLOR:1}
}

PERCENT2HEX() {
  local PERCENTAGE=$1
  local DECIMAL=$(((PERCENTAGE * 255) / 100))
  printf "0x%02X\n" "$DECIMAL"
}

ICON_APPLE=
POPUP_OFF='sketchybar --set logo popup.drawing=off'
BAR_COLOR=$(getcolor black)
POPUP_BACKGROUND_COLOR=$(getcolor black 75)
TRANSPARENT=$(getcolor black 0)
HIGHLIGHT=$(getcolor cyan)

separator=(
  background.height=1
  width=180
  background.color="$(getcolor white 25)"
  background.y_offset=-16
)

menu_item_defaults=(
  label.font="sketchybar-app-font:Regular:12"
  padding_left=6
  padding_right=6
  icon.padding_left=0
  icon.padding_right=4
  icon.color=$HIGHLIGHT
  icon.font.size=13
  background.color=$TRANSPARENT
  scroll_texts=off
  icon.width=16
)


menu_defaults=(
  popup.blur_radius=32
  popup.background.color=$POPUP_BACKGROUND_COLOR
  popup.background.corner_radius=6
  popup.background.shadow.drawing=on
  popup.background.shadow.color=$BAR_COLOR
  popup.background.shadow.angle=90
  popup.background.shadow.distance=64
)

logo=(
  "${menu_defaults[@]}"
  icon=$ICON_APPLE
  icon.font.size=19
  label.drawing=off
  popup.align=left
  click_script="sketchybar --set logo popup.drawing=toggle"
  --subscribe logo mouse.exited
                   mouse.exited.global
)

logo_about=(
  "${menu_item_defaults[@]}"
  label="About This Mac"
  click_script="open x-apple.systempreferences:com.apple.SystemProfiler.AboutExtension; $POPUP_OFF"
  "${separator[@]}"
)

logo_settings=(
  "${menu_item_defaults[@]}"
  label="System Settings"
  click_script="open -a 'System Settings'; $POPUP_OFF"
)

logo_sleep=(
  "${menu_item_defaults[@]}"
  label="Sleep"
  click_script="pmset sleepnow; $POPUP_OFF"
)

logo_restart=(
  "${menu_item_defaults[@]}"
  label="Restart…"
  click_script="osascript -e 'tell app \"loginwindow\" to «event aevtrrst»'; $POPUP_OFF"
)

logo_shutdown=(
  "${menu_item_defaults[@]}"
  label="Shut Down…"
  click_script="osascript -e 'tell app \"loginwindow\" to «event aevtrsdn»'; $POPUP_OFF"
)

logo_lockscreen=(
  "${menu_item_defaults[@]}"
  label="Lock Screen"
  click_script="osascript -e 'tell application \"System Events\" to keystroke \"q\" using {command down,control down}'; $POPUP_OFF"
)

logo_logout=(
  "${menu_item_defaults[@]}"
  label="Log Out"
  click_script="osascript -e 'tell app \"System Events\" to log out'; $POPUP_OFF"
  "${separator[@]}"
)

logo_refresh=(
  "${menu_item_defaults[@]}"
  label="Refresh Sketchybar"
  click_script="$POPUP_OFF; sketchybar --update"
  # script="sketchybar --update"
  # update_freq=86400
  # updates=on
)

sketchybar                                            \
  --add item logo left                                \
  --set logo "${logo[@]}"                             \
                                                      \
  --add item logo.about popup.logo                    \
  --set      logo.about "${logo_about[@]}"            \
                                                      \
  --add item logo.settings popup.logo                 \
  --set      logo.settings "${logo_settings[@]}"      \
                                                      \
  --add item logo.sleep popup.logo                    \
  --set      logo.sleep "${logo_sleep[@]}"            \
                                                      \
  --add item logo.restart popup.logo                  \
  --set      logo.restart "${logo_restart[@]}"        \
                                                      \
  --add item logo.shut_down popup.logo                \
  --set      logo.shut_down "${logo_shutdown[@]}"     \
                                                      \
  --add item logo.lock_screen popup.logo              \
  --set      logo.lock_screen "${logo_lockscreen[@]}" \
                                                      \
  --add item logo.logout popup.logo                   \
  --set      logo.logout "${logo_logout[@]}"          \
                                                      \
  --add item logo.refresh popup.logo                  \
  --set      logo.refresh "${logo_refresh[@]}"
