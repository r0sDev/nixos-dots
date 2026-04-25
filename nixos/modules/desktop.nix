{ config, pkgs, ... }:
{
  services.xserver = {
    enable  = true;
    displayManager.startx.enable     = true;
    displayManager.defaultSession    = "none+i3";
    windowManager.i3 = {
      enable        = true;
      extraPackages = with pkgs; [
        i3status
      ];
    };
  };

  services.xserver.xkb = {
    layout  = "es";
    variant = "";
  };

  programs.light.enable = true;

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
}
