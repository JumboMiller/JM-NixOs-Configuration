# NixOS Flake Configuration

## About

This repository contains a modular NixOS configuration structured via flakes. All system settings are split into separate files for easy maintenance, extension, and portability across different machines.

## Structure

```
JM-flake/
├── flake.nix
└── modules/
    ├── configuration.nix
    ├── hardware-configuration.nix
    ├── locales.nix
    ├── nix.nix
    ├── packages.nix
    ├── programs.nix
    ├── security.nix
    ├── services.nix
    └── users.nix
```

- **flake.nix** — The main flake file that assembles all the modules into a single configuration.
- **modules/** — Folder with individual NixOS modules:
  - `configuration.nix` — Core system parameters.
  - `hardware-configuration.nix` — Auto-generated hardware settings.
  - `locales.nix` — Language and regional settings.
  - `nix.nix` — Nix system and cache configuration.
  - `packages.nix` — List of packages to install.
  - `programs.nix` — Program and utility settings.
  - `security.nix` — Security, firewall, and permissions.
  - `services.nix` — Services and daemons (desktop, ssh, gdm, etc.).
  - `users.nix` — Users and groups.

## Usage

1. **Check the configuration:**
   ```sh
   nix flake check
   ```

2. **Apply the configuration:**
   ```sh
   sudo nixos-rebuild switch --flake /home/jumbo/JM-flake#JMComputer
   ```
   Where `/home/jumbo/JM-flake` is the path to your flake folder and `JMComputer` is the hostname defined in your flake.

## Features

- Modular files make it easy to edit and add new settings.
- All configuration is versioned with git.
- Supports Wayland and X11, with automatic hardware configuration.
- Home Manager integration via flake (optional separate module).

## Tips

- For recent NixOS versions, use the new service options:
  - `services.desktopManager.gnome.enable`
  - `services.displayManager.gdm.enable`
- For Wayland, set keyboard layouts via environment variables or in your WM config.

---

**For questions or suggestions, feel free to open an issue or pull request!**