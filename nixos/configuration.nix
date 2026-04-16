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
  # Boot
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
  # User 
  users.users.r0s = {
    isNormalUser = true;
    description  = "Tello";
    extraGroups  = [ "networkmanager" "wheel" "video" "audio" "input" "vmware" ];
  };
  # Unfree packages
  nixpkgs.config.allowUnfree = true;
  # Flakes + nix-command
  nix.settings.experimental-features = [ "nix-command" "flakes" ];
  # nix-ld for dynamic binaries
  programs.nix-ld.enable = true;
  # Bluetooth
  hardware.bluetooth.enable = true;
  services.fstrim = {
    enable = true;
    interval = "weekly";
  };
  # ssh agent
  programs.gnupg.agent = {
    enable           = true;
    enableSSHSupport = true;
  };
  environment.shellAliases = {
    sshConnect = "bash /etc/nixos/scripts/ssh-connect.sh";
  };
  # Names resolution
  services.gvfs.enable = true;
  # MTR 
  programs.mtr.enable = true;
  # Optimization
  nix.optimise.automatic = true;
  # CPU governor
  powerManagement.cpuFreqGovernor = "schedutil";
  # Kernel
  boot.kernelPackages = pkgs.linuxPackages_latest;
  boot.kernel.sysctl = {
    "vm.swappiness" = 10;
  };
  # Force ROCm
  hardware.opengl = {
    enable = true;
    extraPackages = with pkgs; [
      libva-utils
      libva-vdpau-driver
      libvdpau-va-gl
    ];
  };
  environment.sessionVariables = {
    XCURSOR_THEME    = "Soyjak";
    XCURSOR_SIZE     = "32";
    AMD_VULKAN_ICD   = "RADV";
    VDPAU_DRIVER     = "radeonsi";
    LIBVA_DRIVER_NAME = "radeonsi";
  };
  # monitors rules
  services.udev.extraRules = ''
  ACTION=="change", SUBSYSTEM=="drm", RUN+="${pkgs.bash}/bin/bash -c 'sleep 2 && DISPLAY=:0 XAUTHORITY=/home/r0s/.Xauthority ${pkgs.xorg.xrandr}/bin/xrandr | grep \"HDMI-1 connected\" && DISPLAY=:0 XAUTHORITY=/home/r0s/.Xauthority /home/r0s/dev/monitors.sh'"
 '';
  zramSwap = {
    enable = true;
    algorithm = "zstd";
  };
  system.stateVersion = "25.11";
}
