{ config, pkgs, lib, inputs,... }:
{
  imports = [
   ./hardware-configuration.nix
   inputs.mangowm.nixosModules.mango
  ];

  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;
  
  networking.networkmanager.enable = true;
  systemd.services.NetworkManager-wait-online.enable = false;
  programs.mango.enable = true;
  services.xserver.enable = true;
  services.displayManager.ly = {
    enable = true;
    settings = {
      background = "/home/r0s/media/wall/kittensgame.jpg";
      bg_fill = "fill";
      background_color = "#000000";
    };
  };

  services.openssh.enable = false;
  networking.firewall.enable = true;
  networking.firewall.allowedTCPPorts = [];
  networking.nameservers = [
    "1.1.1.1"
    "9.9.9.9"
  ]; 
 
  services.timesyncd.servers = [
    "time.cloudflare.com"
    "0.ar.pool.ntp.org"
    "1.ar.pool.ntp.org"
    "2.ar.pool.ntp.org"
  ];

  services.dnscrypt-proxy.enable = true;
  networking.hostName = "r0snix";

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
 
  nix.settings.experimental-features = [ "nix-command" "flakes" ];

  users.users.r0s = { 
    isNormalUser = true;
    description  = "me btw";
    extraGroups  = [ "networkmanager" "wheel" "video" "audio" "input" "libvirtd" "kvm"  ];
    packages = with pkgs; [];
  };

  services.xserver.xkb = {
    layout = "es";
    variant = "";
  };

  security.rtkit.enable = true;
  services.pipewire = {
    enable = true;
    alsa.enable = true;
    pulse.enable = true;
  };

  boot.kernelPackages = pkgs.linuxPackages_latest;
  boot.kernel.sysctl = {
    "vm.swappiness" = 10;
    "net.ipv4.tcp_syncookies" = 1;
    "net.ipv4.conf.all.rp_filter" = 1;
    "net.ipv4.icmp_echo_ignore_broadcasts" = 1;
    "net.ipv4.conf.all.accept_redirects" = 0;
    "net.ipv4.conf.default.accept_redirects" = 0;
    "net.ipv4.conf.all.secure_redirects" = 0;
    "net.ipv4.conf.default.secure_redirects" = 0;
    "net.ipv6.conf.all.accept_redirects" = 0;
    "net.ipv6.conf.default.accept_redirects" = 0;
    "net.ipv6.conf.all.accept_source_route" = 0;
    "kernel.kptr_restrict" = 2;
    "kernel.yama.ptrace_scope" = 2;
    "kernel.dmesg_restrict" = 1;
    "fs.protected_symlinks" = 1;
    "fs.protected_hardlinks" = 1;
 };

  services.udisks2.enable = false;
  services.avahi.enable = false;
  services.timesyncd.enable = true;
  hardware.bluetooth.enable = false;
  security.tpm2.enable = false;
  systemd.services.systemd-timesyncd.serviceConfig = {
    StateDirectory = "systemd/timesync";
  };
 
  security.wrappers.qemu-bridge-helper = {
    source = "${pkgs.qemu}/libexec/qemu-bridge-helper";
    owner = lib.mkForce  "root";
    group = lib.mkForce "kvm";
    setuid = lib.mkForce true;
  };
  environment.etc."qemu/bridge.conf".text = "allow br0\n";

  nixpkgs.config.allowUnfree = true;
 
  virtualisation.libvirtd.enable = true;
  programs.virt-manager.enable = true;
  
  environment.systemPackages = with pkgs; [
  openssh
  termshark
  tcpdump
  wget
  networkmanagerapplet
  anydesk
  rustdesk
  nmap
  cifs-utils
  qemu
  
  inputs.mangowm.packages.x86_64-linux.mango
  waybar
  wlr-randr
  swaybg
  brightnessctl
  playerctl
  pulseaudio
  pavucontrol
  feh
  (dmenu.override { conf = builtins.readFile ./dmenu/config.h;})
  bemenu
  dunst
  
  fastfetch
  cpufetch
  acpi
  btop
  fzf
  ripgrep
  fd
  eza
  git
  gh
  vim
  (st.override { conf = builtins.readFile ./st/config.h; patches = [ ./st/patches/scrollback.diff ];  })
  gcc
  util-linux
  git-quick-stats
  ascii-image-converter

  mpv
  ffmpeg
  wireplumber
  alsa-utils

  yazi
  unzip
  zip
  unrar
  p7zip
  zathura
  xdg-utils
  popsicle  
  grim 
  
  obsidian
  taskwarrior2
  libreoffice 
  pkgs.ueberzugpp
  logisim-evolution
  thokr
  mullvad
 ]; 

  environment.sessionVariables = {
    XCURSOR_THEME    = "cz-Hickson-Black";
    XCURSOR_SIZE     = "32";
    AMD_VULKAN_ICD   = "RADV";
    VDPAU_DRIVER     = "radeonsi";
    LIBVA_DRIVER_NAME = "radeonsi";
  };

  fonts.packages = with pkgs; [
   jetbrains-mono
   nerd-fonts.jetbrains-mono
   terminus_font
   ibm-plex
   fairfax-hd
   fairfax
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
