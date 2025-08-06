{ config, pkgs, ... }:
{
  programs.firefox.enable = true;
  programs.hyprland = {
    enable = true;
    withUWSM = true;
    xwayland.enable = true;
  };
}