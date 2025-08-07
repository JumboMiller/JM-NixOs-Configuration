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
  ];
}