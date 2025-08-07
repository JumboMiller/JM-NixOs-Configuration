{ config, pkgs, ... }:

{
  # Принудительно выставить режим и DPI при старте сессии
  services.xserver.displayManager.sessionCommands = ''
    xrandr --output HDMI-1 --mode 1920x1080 --dpi 96
  '';

  # Глобальные переменные для HiDPI в GTK, Qt и Electron
  environment.variables = {
    # GTK3/4
    GDK_SCALE                     = "1";
    GDK_DPI_SCALE                 = "0.5";

    # Qt
    QT_AUTO_SCREEN_SCALE_FACTOR   = "1";
    QT_SCALE_FACTOR               = "1.5";

    # Electron
    ELECTRON_ENABLE_HIGH_DPI_SUPPORT = "1";
  };
}