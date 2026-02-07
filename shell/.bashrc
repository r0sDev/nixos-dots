# ~/.bashrc básico
export PATH="$HOME/.local/bin:$PATH"

# Linux basics
alias suod="sudo"
alias sud="sudo"
alias c="clear"
alias mv="mv -i"
alias rm="rm -Iv"
alias k="pkill"
alias ls='exa --icons'
alias l='exa -la --icons --git'
alias tree='exa --tree --icons'
alias v="nvim"
alias vim='nvim'
alias net="nmcli"
alias netshow="nmcli device wifi list"
alias bat="acpi"
alias vol="amixer sget Master | grep 'Left:' | awk -F'[][]' '{print $2}'"
alias volumedown="amixer set Master 10%-"
alias volumeup="amixer set Master 10%+"
alias brightup="brightnessctl set +10%"
alias brightdown="brightnessctl set 10%-"
alias t="task list"
alias ta="task add"
alias tm="task modify"
alias tt="task done"
alias td="task delete"
alias gens="nix-env --list-generations"
alias fuckgens="sudo nix-env --delete-generations +3"
alias fuckstore="sudo nix-store --optimise"
alias garbage="sudo nix-collect-garbage -d"

PS1=" \W   "

# Pywal color scheme #
wal -q -e -n -i /stuff/images/wallpapers/lain_cross.jpeg

export SUDO_PROMPT="
⠀⠀⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇
⠀⠀⠈⠉⠛⠻⠿⠛⠛⢛⣩⣭⣛⢿⣿⣿⣿⣿⣿⣷⣄
⠀⠀⠀⣾⣿⣦⠀⠀⠀⠀⠀⠉⠙⢷⣽⣿⣿⣿⣿⡇⢉⡀
⠀⠀⠀⣿⣿⣿⣷⣄⠀⠀⠀⠀⢀⣼⣿⣿⣿⣿⣿⡇⣾⡇
⠀⠀⠀⣿⣿⣿⣿⣿⣿⣷⣶⣿⣿⣿⣿⣿⣿⣿⠟⣀⣫    Not so fast
⠀⠀⠀⠿⣿⣿⣿⢿⣿⣿⣿⣿⣿⣿⣿⣿⡟⠏⠘⠿⠃
⠀⠀⠀⠀⠀⠘⢿⣆⢻⣿⣿⣿⣿⣿⣿⣿⡇⡀⠀
⠀⠀⠀⠀⠀⣀⣠⣿⣷⣝⠿⠟⠋⠉⠹⡟⣰⡇
⠀⠀⢀⣤⣠⣿⣿⣿⣿⣿⣿⣶⣶⠟⠁⠀⣿⠁
⠀⠀⠀⠙⠋⠈⠙⠿⠿⠟⣿⠋⠀⠀⠀⢰⡇
⠀⠀⠀⠐⠒⠒⠒⠲⣿⡆
 Enter the magic words:
"
