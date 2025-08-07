{

  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  hardware = {
    graphics.enable           = true;
    graphics.enable32Bit      = true;
    nvidia.open               = false;
    nvidia.modesetting.enable = true;
  };

  system.stateVersion = "25.05";
}