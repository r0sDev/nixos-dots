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
  networking.firewall.allowedTCPPorts = [ ];

  systemd.services.NetworkManager-wait-online.enable = false;
  systemd.services.systemd-timesyncd.serviceConfig = {
    StateDirectory = "systemd/timesync";
  };

  services.openssh = {
    enable = true;
    ports = [ 22 ];
    permitRootLogin = "no";
    passwordAuthentication = false;
  };

  services.xserver.enable = true;
  services.xserver.displayManager.startx.enable = true;
  services.xserver.xkb = {
    layout  = "es";
    variant = "";
  };

  services.timesyncd.enable = true;
  services.timesyncd.servers = [
    "time.cloudflare.com"
    "0.ar.pool.ntp.org"
    "1.ar.pool.ntp.org"
    "2.ar.pool.ntp.org"
  ];

  services.udisks2.enable = false;
  services.avahi.enable = false;

  security.rtkit.enable = true;
  security.tpm2.enable = false;

  services.pipewire = {
    enable       = true;
    alsa.enable  = true;
    pulse.enable = true;
  };

  hardware.bluetooth.enable = false;
  hardware.graphics.enable = true;

  virtualisation.libvirtd.enable = false;

  users.users.r0s = {
    isNormalUser = true;
    description  = "me btw";
    extraGroups  = [ "networkmanager" "wheel" "video" "audio" "input" ];
    packages     = with pkgs; [];
  };

  environment.sessionVariables = {
    AMD_VULKAN_ICD    = "RADV";
    VDPAU_DRIVER      = "radeonsi";
    LIBVA_DRIVER_NAME = "radeonsi";
    MOZ_X11_EGL       = "1";
    MOZ_ENABLE_WAYLAND = "0";
  };
  
  security.doas = {
    enable = true;
    extraRules = [{
      users = [ "r0s" ];
      persist = true;
    }];
  };

  environment.systemPackages = with pkgs; [
    (dmenu.override {
      conf = builtins.readFile ./dmenu/config.h;
    })
    (pkgs.writeShellScriptBin "zen-browser" ''
      export MOZ_ENABLE_WAYLAND=0
      export MOZ_X11_EGL=1
      exec /nix/store/hq6v8z26cxvaxgwpk73clmlqx09idf67-zen-browser-1.18.4b/bin/zen "$@"
    '')

    (st.override {
      conf    = builtins.readFile ./st/config.h;
      patches = [ ./st/patches/scrollback.diff ];
    })

    doas
    gcc
    bspwm
    sxhkd
    xinit
    tcsh
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

    git
    gh
    vim
    ripgrep
    fd
    fastfetch
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
    popsicle

    obsidian
    taskwarrior2

  ];

  fonts.packages = with pkgs; [
    nerd-fonts.jetbrains-mono
    cozette
    siji
    dina-font
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
