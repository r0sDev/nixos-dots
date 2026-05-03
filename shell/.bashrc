export PATH="$HOME/.local/bin:$PATH"

alias k="pkill"
alias l='exa -la --icons'
alias tree='exa --tree --icons'
alias sv="sudo vim"
alias net="nmcli"
alias netSearch="nmcli device wifi list"
alias netEnter="nmcli device wifi connect"
alias t="task list"
alias ta="task add"
alias tm="task modify"
alias tt="task done"
alias td="task delete"
alias hdmiUp="xrandr --output HDMI-1 --above eDP-1 --auto"
alias downHdmi="xrandr --output HDMI-1 --off --output eDP-1 --auto"
alias pshit="~/.local/share/pseint/pseint.sh"
PS1="\[\e[97m\]  \[\e[0m\] "
fastfetch
export SUDO_PROMPT="
Enter the magic words:
"
