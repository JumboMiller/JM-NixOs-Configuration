{
  imports =
    [
      ./hardware-configuration.nix
      ./services.nix
      ./users.nix
      ./programs.nix
      ./locales.nix
      ./packages.nix
      ./nix.nix
      ./security.nix
      # и др
    ];

  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  system.stateVersion = "25.05";
}