{
  description = "My NixOS configuration flake";

  inputs.nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
  inputs.home-manager.url = "github:nix-community/home-manager";

  outputs = { self, nixpkgs, home-manager }@inputs: {
    nixosConfigurations = {
      JMComputer = nixpkgs.lib.nixosSystem {
        system = "x86_64-linux";
        modules = [
          ./modules/configuration.nix
          ./modules/locales.nix
          ./modules/nix.nix
          ./modules/packages.nix
          ./modules/programs.nix
          ./modules/security.nix
          ./modules/services.nix
          ./modules/users.nix
          ./modules/hardware-configuration.nix
          ./modules/ui-scaling.nix
        ];
      };
    };
  };
}