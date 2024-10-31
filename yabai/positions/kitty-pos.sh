#!/usr/bin/env bash

# Filename: ~/github/dotfiles-latest/yabai/positions/kitty-pos.sh
# ~/github/dotfiles-latest/yabai/positions/kitty-pos.sh

# This script is executed from karabiner, but in karabiner docs:
# https://karabiner-elements.pqrs.org/docs/json/complex-modifications-manipulator-definition/to/shell-command/
# The very limited environment variables are passed to the command, $HOME, $UID, $USER, etc.
# Export environment variables in shell_command if your commands depend them.
#
# If you don't do this, the script won't find yabai or jq or any other apps in
# the /opt/homebrew/bin dir
export PATH="/opt/homebrew/bin:$PATH"

display_resolution=$(system_profiler SPDisplaysDataType | grep Resolution)
# First condition is to match my macbook pro, the * are used as wildcards
if [[ "$display_resolution" == *"3456 x 2234"* ]]; then
  yabai -m window --focus "$(yabai -m query --windows | jq '.[] | select(.app == "kitty") | .id')" --move abs:1278:50
  yabai -m window --focus "$(yabai -m query --windows | jq '.[] | select(.app == "kitty") | .id')" --resize abs:210:500
  # Else below will match my 27 inch monitor
else
  yabai -m window --focus "$(yabai -m query --windows | jq '.[] | select(.app == "kitty") | .id')" --move abs:1380:50
  yabai -m window --focus "$(yabai -m query --windows | jq '.[] | select(.app == "kitty") | .id')" --resize abs:210:500
fi
