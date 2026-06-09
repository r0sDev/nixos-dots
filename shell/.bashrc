export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/bin:$PATH"

alias clear="~/dev/help/clear.sh"
alias focus="echo 'press mod+shift+f'"
alias mountUsb="echo 'execute lsblk
sudo mkdir -p /mnt/usb
sudo mount /dev/sdx /mnt/usb'"

alias l='exa -la --icons'
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

alias temporalHdmi="xrandr --output HDMI-A-1 --mode 1366x768 --rate 60.00 --left-of eDP-1"
alias hdmiLeft="xrandr --output HDMI-1 --mode 1366x768 --rate 60.00 --left-of eDP-1"
alias downHdmi="xrandr --output HDMI-1 --off --output eDP-1 --auto"

alias terminus="~/dev/desktop/fontTerminus.sh"
alias cmu="~/dev/desktop/fontCMU.sh"
alias ibm="~/dev/desktop/fontIBM.sh"

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
  
PS1="   "

export SUDO_PROMPT="
 type access: "
