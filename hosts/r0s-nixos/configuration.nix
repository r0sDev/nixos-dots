{ config, pkgs, lib, inputs, ... }:
{
  imports = [
    ./hardware-configuration.nix
  ];

  nix.settings.experimental-features = [ "nix-command" "flakes" ];
  nixpkgs.config.allowUnfree = true;

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

  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;
  boot.kernelPackages = pkgs.linuxPackages_latest;
  boot.kernel.sysctl = {
    "vm.swappiness"                          = 10;
    "net.ipv4.tcp_syncookies"                = 1;
    "net.ipv4.conf.all.rp_filter"            = 1;
    "net.ipv4.icmp_echo_ignore_broadcasts"   = 1;
    "net.ipv4.conf.all.accept_redirects"     = 0;
    "net.ipv4.conf.default.accept_redirects" = 0;
    "net.ipv4.conf.all.secure_redirects"     = 0;
    "net.ipv4.conf.default.secure_redirects" = 0;
    "net.ipv6.conf.all.accept_redirects"     = 0;
    "net.ipv6.conf.default.accept_redirects" = 0;
    "net.ipv6.conf.all.accept_source_route"  = 0;
    "kernel.kptr_restrict"                   = 2;
    "kernel.yama.ptrace_scope"               = 2;
    "kernel.dmesg_restrict"                  = 1;
    "fs.protected_symlinks"                  = 1;
    "fs.protected_hardlinks"                 = 1;
  };

  networking.hostName = "r0snix";
  networking.networkmanager.enable = true;
  networking.nameservers = [
    "1.1.1.1"
    "9.9.9.9"
  ];
  networking.firewall.enable = true;
  networking.firewall.allowedTCPPorts = [];

  systemd.services.NetworkManager-wait-online.enable = false;
  systemd.services.systemd-timesyncd.serviceConfig = {
    StateDirectory = "systemd/timesync";
  };

  services.xserver.enable = true;
  services.xserver.displayManager.startx.enable = true;
  services.xserver.windowManager.dwm.enable = true;
  services.xserver.xkb = {
    layout  = "es";
    variant = "";
  };

  services.openssh.enable = false;
  services.timesyncd.enable = true;
  services.timesyncd.servers = [
    "time.cloudflare.com"
    "0.ar.pool.ntp.org"
    "1.ar.pool.ntp.org"
    "2.ar.pool.ntp.org"
  ];
  services.dnscrypt-proxy.enable = true;
  services.udisks2.enable = false;
  services.avahi.enable = false;

  security.rtkit.enable = true;
  security.tpm2.enable = false;
  security.wrappers.qemu-bridge-helper = {
    source = "${pkgs.qemu}/libexec/qemu-bridge-helper";
    owner  = lib.mkForce "root";
    group  = lib.mkForce "kvm";
    setuid = lib.mkForce true;
  };

  services.pipewire = {
    enable       = true;
    alsa.enable  = true;
    pulse.enable = true;
  };

  hardware.bluetooth.enable = false;

  virtualisation.libvirtd.enable = true;
  programs.virt-manager.enable = true;

  environment.etc."qemu/bridge.conf".text = "allow br0\n";

  users.users.r0s = {
    isNormalUser = true;
    description  = "me btw";
    extraGroups  = [ "networkmanager" "wheel" "video" "audio" "input" "libvirtd" "kvm" ];
    packages     = with pkgs; [];
  };

  environment.sessionVariables = {
    AMD_VULKAN_ICD    = "RADV";
    VDPAU_DRIVER      = "radeonsi";
    LIBVA_DRIVER_NAME = "radeonsi";
  };

  environment.systemPackages = with pkgs; [
    (st.override {
      conf    = builtins.readFile ./st/config.h;
      patches = [ ./st/patches/scrollback.diff ];
    })
    (dmenu.override {
      conf = builtins.readFile ./dmenu/config.h;
    })

    bspwm
    sxhkd
    xinit
    xrandr
    bemenu
    lemonbar

    pavucontrol
    playerctl
    brightnessctl
    wireplumber
    alsa-utils
    cifs-utils
    util-linux
    ffmpeg

    openssh
    nmap
    termshark
    anydesk
    rustdesk
    qemu

    git
    gh
    vim
    gcc
    fzf
    ripgrep
    fd
    fastfetch
    cpufetch
    acpi
    btop
    scrot
    feh

    yazi
    ueberzugpp
    zathura
    xdg-utils
    unzip
    zip
    unrar
    p7zip
    popsicle

    qutebrowser
    obsidian
    taskwarrior2
    libreoffice
  ];

  fonts.packages = with pkgs; [
    jetbrains-mono
    nerd-fonts.jetbrains-mono
    terminus_font
    fairfax-hd
    fairfax
    cozette
  ];

  fonts.fontconfig = {
    enable         = true;
    antialias      = true;
    hinting.enable = true;
    hinting.style  = "slight";
    subpixel.rgba  = "rgb";
  };

  system.stateVersion = "25.11";
}
