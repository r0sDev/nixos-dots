{ config, pkgs, ... }:

{
  imports =
    [
      ./hardware-configuration.nix
    ];

  # Bootloader.
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  networking.hostName = "nixos"; # Define your hostname.

  # Enaetworking
  networking.networkmanager.enable = true;

  # Time zone
  time.timeZone = "America/Argentina/Buenos_Aires";

  # Internationalisation properties.
  i18n.defaultLocale = "en_US.UTF-8";
  i18n.extraLocaleSettings = {
    LC_ADDRESS = "es_AR.UTF-8";
    LC_IDENTIFICATION = "es_AR.UTF-8";
    LC_MEASUREMENT = "es_AR.UTF-8";
    LC_MONETARY = "es_AR.UTF-8";
    LC_NAME = "es_AR.UTF-8";
    LC_NUMERIC = "es_AR.UTF-8";
    LC_PAPER = "es_AR.UTF-8";
    LC_TELEPHONE = "es_AR.UTF-8";
    LC_TIME = "es_AR.UTF-8";
  };

  # Keymap in X11
  services.xserver.xkb = {
    layout = "es";
    variant = "";
  };

  # Console keymap
  console.keyMap = "la-latin1";

  # Account
  users.users.r0s = {
    isNormalUser = true;
    description = "Elias Tello";
    extraGroups = [
    "networkmanager"
    "wheel" 
    "video"
    "audio"
    "input"
    ];
    packages = with pkgs; [];
  };

  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;

  # Flakes
  nix.settings.experimental-features = [ "nix-command" "flakes"];
  programs.nix-ld.enable = true;

  services.xserver = {
  enable = true;
  layout = "es";
  displayManager.lightdm.enable = true;
  displayManager.defaultSession = "none+i3";
  windowManager.i3 = {
    enable = true;
    extraPackages = with pkgs; [
      dmenu
      i3status
      i3lock
      picom
    ];
  };  
  }; 
  security.rtkit.enable = true;
  services.pipewire = {
    enable = true;
    alsa.enable = true;
    pulse.enable = true;
  };
  programs.light.enable = true;
 
  # Packages
  environment.systemPackages = with pkgs; [
  # Terminal
    alacritty
    neovim
    git
    eza
    bat
    btop
    pfetch
    cpufetch
    acpi
    fzf
    alsa-utils
  #i3 
    polybar
    xrandr    
    pulseaudio
    pavucontrol
    brightnessctl
    playerctl  
    mpv
    wireplumber
  # utils
    yazi
    wl-clipboard
    pcmanfm
    unzip
    zip
    xdg-utils
    rofi
    feh
    pywal
    vesktop
  # work
    taskwarrior2
    obsidian
    anydesk
    nmap
    curl
    wget
    openssh
    networkmanagerapplet
    wireshark
    iperf3
    traceroute
    virtualbox
    (polybar.override {
      pulseSupport = true;
      })
  ];
  
  # Fonts
  fonts.packages = with pkgs; [
    jetbrains-mono
    nerd-fonts.jetbrains-mono
    nerd-fonts.hack
    fira-code
    fira-code-symbols
  ];

  # Some programs need SUID wrappers, can be configured further or are
  # started in user sessions.
   programs.mtr.enable = true;
   programs.gnupg.agent = {
     enable = true;
     enableSSHSupport = true;
   };

  # List services that you want to enable:

  # Enable the OpenSSH daemon.
  services.openssh.enable = true;

  # Virtualisation
  virtualisation.virtualbox.host.enable = true;
  virtualisation.virtualbox.host.enableExtensionPack = true;


  # Open ports in the firewall.
  # networking.firewall.allowedTCPPorts = [ ... ];
  # networking.firewall.allowedUDPPorts = [ ... ];
  # Or disable the firewall altogether.
  # networking.firewall.enable = false;
  system.stateVersion = "25.11"; 
}
