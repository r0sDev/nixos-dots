{ config, pkgs, ... }:
{
  imports = [
    ./hardware-configuration.nix
  ];

  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;
  
  networking.networkmanager.enable = true;
  systemd.services.NetworkManager-wait-online.enable = false;
  networking.firewall.enable = true;
  networking.firewall.allowedTCPPorts = [ 22 ];
  networking.nameservers = [ "1.1.1.1" "1.0.0.1" ];
  
  services.openssh.enable = true;

  networking.hostName = "r0sNixos";

  time.timeZone = "America/Argentina/Buenos_Aires";

  i18n.defaultLocale = "en_US.UTF-8";
  i18n.extraLocaleSettings = {
    LC_ADDRESS        = "es_AR.UTF-8";
    LC_IDENTIFICATION = "es_AR.UTF-8";
    LC_MEASUREMENT    = "es_AR.UTF-8";
    LC_MONETARY       = "es_AR.UTF-8";
    LC_NAME           = "es_AR.UTF-8";
    LC_NUMERIC        = "es_AR.UTF-8";
    LC_PAPER          = "es_AR.UTF-8";
    LC_TELEPHONE      = "es_AR.UTF-8";
    LC_TIME           = "es_AR.UTF-8";
  };

  services.xserver.enable = true;
  services.xserver.displayManager.startx.enable = true;
  services.displayManager.defaultSession = "none+i3";

  services.xserver = {
    windowManager.i3 = {
      enable        = true;
      extraPackages = with pkgs; [
        i3status
      ];
    };
   };
  
  nix.settings.experimental-features = [ "nix-command" "flakes" ];

  users.users.r0s = { 
    isNormalUser = true;
    description  = "me btw";
    extraGroups  = [ "networkmanager" "wheel" "video" "audio" "input" "vmware" ];
    packages = with pkgs; [];
  };

  services.xserver.xkb = {
    layout = "es";
    variant = "";
  };
#  console.keyMap = "es";


  security.rtkit.enable = true;
  services.pipewire = {
    enable = true;
    alsa.enable = true;
    pulse.enable = true;
  };

  nixpkgs.config.allowUnfree = true;
 
  environment.systemPackages = with pkgs; [
  openssh
  curl
  wget
  networkmanagerapplet
  anydesk
  nmap
  pkgs.cifs-utils
  
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
  
  fastfetch
  cpufetch
  acpi
  speedtest-cli
  btop
  fzf
  ripgrep
  fd
  eza
  git
  gh
  vim
  alacritty
  cargo
  codeblocksFull
  gcc
  util-linux

  mpv
  ffmpeg
  wireplumber
  alsa-utils
  onlyoffice-desktopeditors
  drawio
  vlc
 
  yazi
  unzip
  zip
  unrar
  p7zip
  zathura
  xdg-utils
  popsicle  
 
  obsidian
  taskwarrior2
  vesktop
  steam-run
  pkgs.ueberzugpp
  xfce.thunar

  ];  

  boot.kernelPackages = pkgs.linuxPackages_latest;
  boot.kernel.sysctl = {
    "vm.swappiness" = 10;
  };

  services.udisks2.enable = false;
  services.timesyncd.enable = true;
  systemd.services.systemd-timesyncd.serviceConfig = {
    StateDirectory = "systemd/timesync";
  };
  
  services.timesyncd = {
  servers = [
    "0.ar.pool.ntp.org"
    "1.ar.pool.ntp.org"
    "2.ar.pool.ntp.org"
    "time.cloudflare.com"
  ];
  fallbackServers = [
    "0.south-america.pool.ntp.org"
    "1.south-america.pool.ntp.org"
   ];
  };

  environment.sessionVariables = {
    XCURSOR_THEME    = "Soyjak";
    XCURSOR_SIZE     = "32";
    AMD_VULKAN_ICD   = "RADV";
    VDPAU_DRIVER     = "radeonsi";
    LIBVA_DRIVER_NAME = "radeonsi";
  };

  fonts.packages = with pkgs; [
    jetbrains-mono
    nerd-fonts.jetbrains-mono
    fira-code
    fira-code-symbols
    terminus_font
  ];

  fonts.fontconfig = {
    enable        = true;
    antialias     = true;
    hinting.enable = true;
    hinting.style  = "slight";
    subpixel.rgba  = "rgb";
  };

  system.stateVersion = "25.11";
}
