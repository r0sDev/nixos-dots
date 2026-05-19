export PATH="$HOME/.local/bin:$PATH"

alias clear='echo "no vas a limpiar esta boludes, dale segui"'
alias k="pkill"
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
alias hdmiUp="xrandr --output HDMI-1 --above eDP-1 --auto"
alias downHdmi="xrandr --output HDMI-1 --off --output eDP-1 --auto"
alias terminus="./dev/desktop/fontTerminus.sh"
alias cmu="./dev/desktop/fontCMU.sh"
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
  -bios /nix/store/ysrdhk0a652bxhb9rl363f2gcvpixwx6-seabios-1.17.0/share/seabios/bios.bin"
alias matrix="./dev/desktop/cybervis/cybervis "
PS1="\[\e[97m\]  \[\e[0m\] "
fastfetch
export SUDO_PROMPT="
enter pass: "
