
# NixOS Flake Configuration

## About

This repository contains a modular NixOS configuration managed with flakes. All system settings are split into separate files for easy maintenance and extension.

## Structure

```
JM-NixOs-Configuration/
├── flake.nix
└── modules/
    ├── configuration.nix
    ├── hardware-configuration.nix (not included by default)
    ├── locales.nix
    ├── nix.nix
    ├── packages.nix
    ├── programs.nix
    ├── security.nix
    ├── services.nix
    └── users.nix
```

- **flake.nix** — main flake file that assembles all modules into a single configuration
- **modules/** — folder with individual NixOS modules:
  - `configuration.nix` — core system parameters
  - `hardware-configuration.nix` — auto-generated hardware settings (**see below!**)
  - `locales.nix` — language and regional settings
  - `nix.nix` — Nix system and cache configuration
  - `packages.nix` — list of packages to install
  - `programs.nix` — program and utility settings
  - `security.nix` — security, firewall, permissions
  - `services.nix` — services and daemons (desktop, ssh, gdm, etc.)
  - `users.nix` — users and groups

## Important: hardware-configuration.nix

The file `hardware-configuration.nix` is unique for every computer. It is not included in this repository by default.

**After cloning the repository:**

1. Copy your own hardware configuration file from your system:
   ```sh
   cp /etc/nixos/hardware-configuration.nix -> place you save flake
   ```
   (If you don't have it yet, you can generate it with `sudo nixos-generate-config --root /mnt` during installation.)

**Never use someone else's hardware-configuration.nix!**

## Usage

1. **Check the configuration:**
   ```sh
   nix flake check
   ```

2. **Apply the configuration:**
   ```sh
   sudo nixos-rebuild switch --flake /path/to/JM-NixOs-Configuration#<hostname>
   ```
   Where `/path/to/JM-NixOs-Configuration` is the path to this repository, and `<hostname>` is the hostname defined in your flake.

## Features

- Modular files make it easy to edit and add new settings
- All configuration is versioned with git (except hardware-configuration.nix)
- Supports Wayland and X11, with automatic hardware configuration
- Optional Home Manager integration via a separate module

## Tips

- For GNOME desktop, use:
  - `services.desktopManager.gnome.enable`
  - `services.displayManager.gdm.enable`
- For Wayland, set keyboard layouts via environment variables or in your window manager config

---

**For questions or suggestions, open an issue or pull request!**