export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/bin:$PATH"
alias l='ll -la'
alias sv="sudo vim"
alias net="nmcli"
alias netSearch="nmcli device wifi list"
alias netEnter="nmcli device wifi connect"
alias netEthernet="net connection up 'Wired connection 1'"
alias t="task list"
alias ta="task add"
alias tm="task modify"
alias tt="task done"
alias td="task delete"
alias gs="git status"
alias ga="git add"
alias gc="git commit -m"
alias gp="git push"
alias nix-repo="~/development/updaters/nixos-dots-update.sh"
alias hLeft="xrandr --output HDMI-1 --mode 1366x768 --pos 0x0 \
       --output eDP-1 --primary --mode 1920x1080"
alias walls="~/development/desktop/wall-selector.sh"
alias news="hacker-news-tui"
alias pshit="~/.local/share/pseint/pseint.sh"
alias help_ssh="echo 'remember to use duckdns.org'"

# prompts
# PS1='\[\e[38;5;000m\] \u · \[\e[38;5;000m\]'
 PS1='\[\e[38;5;255m\] \u · \[\e[38;5;255m\]'
export PS1
export SUDO_PROMPT="please type encrypted access: "
