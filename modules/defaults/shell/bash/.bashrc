export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/bin:$PATH"

alias focus="echo 'press mod+shift+f'"
alias mountUsb="echo 'execute lsblk
sudo mkdir -p /mnt/usb
sudo mount /dev/sdx /mnt/usb'"

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

alias hLeft="wlr-randr --output HDMI-A-1 --mode 1366x768 --pos 0,0"

alias terminus="~/development/desktop/fontTerminus.sh"
alias cmu="~/development/desktop/fontCMU.sh"
alias ibm="~/development/desktop/fontIBM.sh"
alias fairfax="~/development/desktop/fontFairfax.sh"
alias walls="~/development/desktop/wall-selector.sh"

alias news="hacker-news-tui"

alias pshit="~/.local/share/pseint/pseint.sh"
alias microslop="qemu-system-x86_64 \
  -enable-kvm \
  -cpu host \
  -smp 4 \
  -m 4G \
  -drive file=/home/r0s/win10.qcow2,format=qcow2 \
  -vga virtio \
  -display gtk \
  -net nic -net user \
  -bios /nix/store/mjf59ffyi1725g7xvp9gzp3zmga4alyw-qemu-10.1.5/share/qemu/bios.bin"
  
PS1=" $ "

export SUDO_PROMPT="
 type access: "
