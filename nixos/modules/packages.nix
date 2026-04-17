{    proton-vpn-cli, config, pkgs, ... }:
{
  environment.systemPackages = with pkgs; [

    # Shell
    alacritty
    neovim
    git
    eza
    btop
    fzf
    cpufetch
    acpi
    ripgrep
    fd
    nodejs
    gcc
    fastfetch

    # Lang
    python3
    cargo
    jdk17

    # i3 | Desktop utils
    polybar
    (polybar.override { pulseSupport = true; })
    xorg.xrandr
    brightnessctl
    playerctl
    pulseaudio       
    pavucontrol
    feh
    xclip 
    rofi
    dunst 
    dmidecode
    libreoffice

    # Media
    mpv
    ffmpeg
    wireplumber
    alsa-utils

    # Files 
    yazi
    pcmanfm
    unzip
    zip
    xdg-utils
    zathura
    obsidian
    taskwarrior2
    steam-run
    pkgs.ueberzugpp
    p7zip
    unrar

    # Comunication
    vesktop        

    # It
    nmap
    anydesk
    openssh
    curl
    wget
    networkmanagerapplet
    pkgs.cifs-utils
    gh
    speedtest-cli
   
];
}
