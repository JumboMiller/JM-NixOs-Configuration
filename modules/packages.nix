{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    vim
    wget
    vscode
    telegram-desktop
    discord
    hyprland
    git
    spotify
    lutris

    google-fonts
    google-chrome

    xorg.xdpyinfo

    gnomeExtensions.applications-menu
    gnomeExtensions.app-hider
    gnomeExtensions.open-bar
    gnomeExtensions.dash2dock-lite
    gnomeExtensions.places-status-indicator
    gnomeExtensions.appindicator
    gnomeExtensions.clipboard-indicator
    gnomeExtensions.blur-my-shell
    gnomeExtensions.desktop-cube
    gnomeExtensions.just-perfection
    gnomeExtensions.vitals
    gnomeExtensions.forge
    gnomeExtensions.tweaks-in-system-menu
    gnomeExtensions.activate_gnome
    
  ];
  environment.variables = {
    # GTK2/3/4
    # итоговый масштаб = GDK_SCALE * GDK_DPI_SCALE ≈ 2 * 0.865 = 1.73 → 166/96
    GDK_SCALE        = "2";
    GDK_DPI_SCALE    = "0.865";

    # Qt5/6
    QT_SCALE_FACTOR             = "1.729";  # 166/96
    QT_AUTO_SCREEN_SCALE_FACTOR = "0";       # не автоопределять
    QT_SCREEN_SCALE_FACTORS     = "1.729";   # если несколько экранов, разделяйте точкой с запятой
    QT_FONT_DPI                 = "166";     # точное DPI для рендера шрифтов

    # SDL (игры и некоторые GUI)
    SDL_VIDEO_HIGHDPI_DISABLED = "0";        # разрешить HiDPI
    SDL_VIDEO_X11_DPI          = "166";      # на случай X11-запуска через XWayland

    # EFL/Enlightenment
    ELM_SCALE = "173";                       # в процентах, округл. 166/96*100

    # Mozilla (Firefox/Thunderbird под Wayland)
    MOZ_ENABLE_WAYLAND = "1";
    MOZ_GTK_SCALE      = "1.729";

    # Курсор
    # исходный размер ~24–32px, умножаем на 1.73 → около 42px
    XCURSOR_SIZE = "42";

    # Rust/winit-приложения
    WINIT_HIDPI_FACTOR = "1.729";
  };
}