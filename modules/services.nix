{ config, pkgs, ... }:

{
  # X11 server and NVIDIA driver
  services.xserver = {
    enable       = true;
    videoDrivers = [ "nvidia" ];
    xkb = {
      layout  = "us";
      variant = "";
    };
    
  };

  services.libinput = {
    enable = true;
    mouse.accelProfile = "flat";
    touchpad.accelProfile = "flat";
  };
  
  hardware = {
    graphics.enable      = true;
    graphics.enable32Bit = true;
    
    nvidia = {
      modesetting.enable = true;
      nvidiaSettings = true;  
      open = false;
      package = config.boot.kernelPackages.nvidiaPackages.legacy_535;
    };
  };
  
  # GNOME desktop
  services.displayManager.gdm.enable = true;
  services.desktopManager.gnome = {
    enable = true;
  };

  # Printing disabled
  services.printing.enable = false;

  # Audio: use PipeWire with ALSA & Pulse compatibility
  services.pulseaudio.enable = false;
  services.pipewire = {
    enable            = true;
    alsa.enable       = true;
    alsa.support32Bit = true;
    pulse.enable      = true;
  };
}