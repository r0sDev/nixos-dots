# flake.nix
{
  description = "r0snix nixos config";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
  };

  outputs = { self, nixpkgs, mangowm, ... }@inputs:
  let
    system = "x86_64-linux";
  in {
    nixosConfigurations.r0snix = nixpkgs.lib.nixosSystem {
      inherit system;
      specialArgs = { inherit inputs; };
      modules = [
        ./configuration.nix
      ];
    };
  };
}
