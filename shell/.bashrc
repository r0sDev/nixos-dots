export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/.cargo/bin:$PATH"

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
alias voldown="amixer set Master 10%-"
alias volup="amixer set Master 10%+"
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
alias hdmiUp="xrandr --output HDMI-1 --above eDP-1 --auto"
alias fuckhdmi="xrandr --output HDMI-1 --off --output eDP-1 --auto"
alias minecraft="steam-run java -jar ~/media/TLauncher.jar"
PS1="  "

dott-tui
t
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
