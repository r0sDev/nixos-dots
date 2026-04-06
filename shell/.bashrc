export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/.cargo/bin:$PATH"

alias suod="sudo"
alias c="clear"
alias mv="mv -i"
alias rm="rm -Iv"
alias k="pkill"
alias ls='exa --icons'
alias l='exa -la --icons --git'
alias tree='exa --tree --icons'
alias v="nvim"
alias net="nmcli"
alias netSearch="nmcli device wifi list"
alias netEnter="nmcli device wifi connect"
alias bat="acpi"
alias t="task list"
alias ta="task add"
alias tm="task modify"
alias tt="task done"
alias td="task delete"
alias gens="nix-env --list-generations"
alias fuckstore="sudo nix-store --optimise"
alias fuckgarbage="sudo nix-collect-garbage -d"
alias hdmiUp="xrandr --output HDMI-1 --above eDP-1 --auto"
alias fuckhdmi="xrandr --output HDMI-1 --off --output eDP-1 --auto"
alias minecraft="steam-run java -jar ~/dev/TLauncher.jar"
alias sshRouter="ssh -oHostKeyAlgorithms=+ssh-rsa -oPubkeyAcceptedAlgorithms=+ssh-rsa admin@192.168.1.1"
PS1="\[\e[97m\]  \[\e[0m\] "
fastfetch
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
export XCURSOR_THEME=Soyjak
export XCURSOR_PATH=$HOME/.local/share/icons
export XCURSOR_SIZE=24
