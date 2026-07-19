# ~/.cshrc

setenv PATH "$HOME/.local/bin:$HOME/bin:$PATH"
setenv BROWSER "zen-browser"
setenv SUDO_PROMPT "pass btw: "

set white="%{\033[38;5;255m%}"
set red="%{\033[31m%}"
set reset="%{\033[0m%}"

set prompt="%{\033[37m%} $ %{\033[0m%}"

alias sudo       echo 'use doas btw'
alias l          "ls -lah"
alias dv         "doas vim"

alias net        nmcli
alias netSearch  "nmcli device wifi list"
alias netEnter   "nmcli device wifi connect"
alias netEthernet "nmcli connection up 'Wired connection 1'"

alias t          "task list"
alias ta         "task add"
alias tm         "task modify"
alias tt         "task done"
alias td         "task delete"

alias gs         "git status"
alias ga         "git add"
alias gc         "git commit -m"
alias gp         "git push"

alias nix-repo   "~/development/updaters/nixos-dots-update.sh"

alias hRight     "xrandr --output eDP-1 --mode 1920x1080 --output HDMI-1 --mode 1366x768 --right-of eDP-1"
alias walls      "~/development/desktop/wall-selector.sh"

alias news       hacker-news-tui

alias pshit      "~/.local/share/pseint/pseint.sh"

fastfetch
