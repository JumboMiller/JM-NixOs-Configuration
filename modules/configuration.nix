{

  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  fonts = {
    enableFontConfig = true;
    fontconfig = {
      defaultFonts = {
        sans = [ "Roboto" ];
        serif = [ "Roboto Slab" ];
        monospace = [ "Roboto Mono" ];
      };
      settings = {
        antialias = true;
        hinting = "slight";
        subpixelRendering = "rgb";
      };
    };
  };

  environment.variables = {
    GTK_FONT_NAME = "Roboto 14"; 
  };

  system.stateVersion = "25.05";
}