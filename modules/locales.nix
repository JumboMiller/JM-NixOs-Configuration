{ config, pkgs, ... }:
{
  time.timeZone = "Europe/Madrid";
  i18n.defaultLocale = "ru_RU.UTF-8";
  i18n.extraLocaleSettings = {
    LC_MESSAGES = "ru_RU.UTF-8";  
    LC_ADDRESS = "ru_RU.UTF-8";
    LC_IDENTIFICATION = "ru_RU.UTF-8";
    LC_MEASUREMENT = "ru_RU.UTF-8";
    LC_MONETARY = "es_ES.UTF-8";
    LC_NAME = "ru_RU.UTF-8";
    LC_NUMERIC = "ru_RU.UTF-8";
    LC_PAPER = "ru_RU.UTF-8";
    LC_TELEPHONE = "ru_RU.UTF-8";
    LC_TIME = "ru_RU.UTF-8";
  };
}