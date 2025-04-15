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
export PATH="/usr/local/bin:$PATH"

# Função para verificar se uma janela existe antes de tentar movê-la
move_window() {
    local app="$1"
    local x="$2"
    local y="$3"
    local w="$4"
    local h="$5"

    # Pega o ID da janela se ela existir
    window_id=$(yabai -m query --windows | jq -r ".[] | select(.app == \"$app\") | .id")
    
    if [ ! -z "$window_id" ]; then
        # Garante que a janela está em modo float
        yabai -m window "$window_id" --toggle float || true
        
        # Pequena pausa para garantir que o estado foi atualizado
        sleep 0.1
        
        # Move a janela para a posição desejada
        yabai -m window "$window_id" --move "abs:${x}:${y}" || true
        
        # Pequena pausa antes do redimensionamento
        sleep 0.1
        
        # Redimensiona a janela
        yabai -m window "$window_id" --resize "abs:${w}:${h}" || true
    else
        echo "Janela do $app não encontrada"
    fi
}

display_resolution=$(system_profiler SPDisplaysDataType | grep Resolution)

# Check if more than one display is connected
if [[ $(echo "$display_resolution" | grep -c "Resolution") -ge 2 ]]; then
    move_window "kitty" 1131 40 309 412
    exit 0
fi

# MacBook Pro Retina 15-inch config
if [[ "$display_resolution" == *"2880 x 1800"* ]]; then
    move_window "kitty" 1131 40 309 412
    
# 1920x1080 monitor config
elif [[ "$display_resolution" == *"1920 x 1080"* ]]; then
    move_window "kitty" 1131 40 309 412
    
# 1536x2048 config
elif [[ "$display_resolution" == *"1536 x 2048"* ]]; then
    move_window "kitty" 1131 40 309 412
    
# Default config
else
    move_window "kitty" 1131 40 309 412
fi
