{ config, pkgs, ... }:
{
  users.users.jumbo = {
    isNormalUser = true;
    description = "Jumbo";
    extraGroups = [ "networkmanager" "wheel" ];
    packages = with pkgs; [
    #  thunderbird
    ];
  };
}