{ config, pkgs, ... }:
{
  imports = [
    ./hardware-configuration.nix
    ./modules/desktop.nix
    ./modules/audio.nix
    ./modules/packages.nix
    ./modules/network.nix
    ./modules/virtualisation.nix
  ];

  # Bootloader
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  # Hostname
  networking.hostName = "nixos";

  # Time zone
  time.timeZone = "America/Argentina/Buenos_Aires";

  # Internationalisation
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

  # Console keymap
  console.keyMap = "es";

  # User account
  users.users.r0s = {
    isNormalUser = true;
    description  = "Elias Tello";
    extraGroups  = [ "networkmanager" "wheel" "video" "audio" "input" "vmware" ];
    packages     = with pkgs; [];
  };

  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;

  # Flakes + nix-command
  nix.settings.experimental-features = [ "nix-command" "flakes" ];

  # nix-ld for dynamic binaries
  programs.nix-ld.enable = true;
  
  # Kernel AMD 
  boot.kernel.sysctl = {
    "wm.swappiness" = 10;
  };
 
  services.fstrim = {
    enable = true;
    interval = "weekly";
  };

  # GPG / SSH agent
  programs.gnupg.agent = {
    enable         = true;
    enableSSHSupport = true;
  };
  
  environment.shellAliases = {
  sshConnect = "bash /etc/nixos/scripts/ssh-connect.sh";
  };


  # Opcional: evitar que systemd-sleep actúe
  systemd.sleep.extraConfig = ''
    AllowSuspend=no
    AllowHibernation=no
  '';

  # MTR (needs SUID)
  programs.mtr.enable = true;

  system.stateVersion = "25.11";
}
