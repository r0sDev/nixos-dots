{ config, pkgs, ... }:
{
  networking.networkmanager.enable = true;

  services.openssh = {
  enable = true;
  settings = {
    PasswordAuthentication = false; 
    PermitRootLogin = "no";
  };
  };
  
  networking.firewall.allowedTCPPorts = [ 22 ];

  networking.nameservers = [ "1.1.1.1" "1.0.0.1" ];

  # networking.firewall.allowedTCPPorts = [ 22 80 443 ];
  # networking.firewall.allowedUDPPorts = [ ];
  # networking.firewall.enable = true;
}
