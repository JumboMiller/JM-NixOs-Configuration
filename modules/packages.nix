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

    gnomeExtensions.applications-menu
    gnomeExtensions.open-bar
    gnomeExtensions.dash2dock-lite
  ];
}