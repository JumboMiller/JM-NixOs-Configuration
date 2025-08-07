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

  hardware = {
    graphics.enable           = true;
    graphics.enable32Bit      = true;
    nvidia.open               = false;
    nvidia.modesetting.enable = true;
  };

  services.xserver = {
    enable       = true;
    videoDrivers = [ "nvidia" ];
  };

  system.stateVersion = "25.05";
}