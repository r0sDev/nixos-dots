export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/bin:$PATH"

alias mountUsb="echo 'execute lsblk
sudo mkdir -p /mnt/usb
sudo mount /dev/sdx /mnt/usb'"
alias home-lab="ssh the server"

alias l='ll -la'
alias sv="sudo vim"
alias space="du -sh * | sort -hr | head -20"
alias net="nmcli"
alias netSearch="nmcli device wifi list"
alias netEnter="nmcli device wifi connect"
alias netEthernet="net connection up 'Wired connection 1'"
alias t="task list"
alias ta="task add"
alias tm="task modify"
alias tt="task done"
alias td="task delete"
alias diary="~/development/desktop/diary/diary.sh"

alias gs="git status"
alias ga="git add"
alias gc="git commit -m"
alias gp="git push"
alias nix-repo="~/development/updaters/nixos-dots-update.sh"

alias hLeft="xrandr --output HDMI-1 --mode 1366x768 --pos 0x0 \
       --output eDP-1 --primary --mode 1920x1080 --pos 1920x0"

alias terminus="~/development/desktop/fonts/fontTerminus.sh"
alias cmu="~/development/desktop/fonts/fontCMU.sh"
alias ibm="~/development/desktop/fonts/fontIBM.sh"
alias fairfax="~/development/desktop/fonts/fontFairfax.sh"
alias walls="~/development/desktop/wall-selector.sh"

alias news="hacker-news-tui"

alias pshit="~/.local/share/pseint/pseint.sh"

PS1='\[\e[38;5;000m\]ssh://\u · \[\e[38;5;000m\]'
export PS1
export SUDO_PROMPT="
 type access: "
