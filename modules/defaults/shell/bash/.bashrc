export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/bin:$PATH"
export BROWSER=zen-browser

RED='\[\e[38;2;230;87;64m\]'
WHITE='\[\e[38;5;255m\]'
RESET='\[\e[0m\]'

alias sudo="doas"
alias l='ll -la'
alias sv="doas vim"
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
alias hRight="xrandr --output eDP-1 --mode 1920x1080 --output HDMI-1 --mode 1366x768 --right-of eDP-1"
alias walls="~/development/desktop/wall-selector.sh"
alias news="hacker-news-tui"
alias pshit="~/.local/share/pseint/pseint.sh"
alias help_ssh="echo 'remember to use duckdns.org'"

PS1="${WHITE}╭·${RED}\$(free -h | awk '/^Mem:/ {print \$3}')${WHITE}·[\w]·╮\n╰·${RESET}"

export PS1
export SUDO_PROMPT="pass btw: "
fastfetch
