# Installation Guide

Welcome to **Caelestia-NixOS**.

This guide walks you through installing Caelestia-NixOS on a clean NixOS system.

No previous NixOS experience is required.

---

# Requirements

Before starting you should have:

- A working NixOS installation
- Internet connection
- Git installed
- Basic terminal knowledge

---

# Step 1 — Install Git

If Git is not installed:

```bash
nix-shell -p git
```

or

```bash
nix profile install nixpkgs#git
```

---

# Step 2 — Clone the repository

```bash
git clone https://github.com/martinpipo2050/caelestia-nixos.git

cd caelestia-nixos
```

---

# Step 3 — Copy your hardware configuration

A standard NixOS installation creates the `/etc/nixos` directory containing
your system configuration.

This repository already provides its own modular NixOS and Home Manager
configuration, so **do not copy your entire `/etc/nixos` directory**.

The only file required from your installation is
`hardware-configuration.nix`, which contains hardware-specific settings.

```bash
sudo cp /etc/nixos/hardware-configuration.nix hosts/desktop/
```

Replace the existing file if necessary.

# Step 4 — Review the configuration

Before building the system, verify:

- hostname
- username
- disk layout
- hardware configuration

For most users, the only required change is replacing the generated `hardware-configuration.nix`.

---

# Step 5 — Build the system

```bash
sudo nixos-rebuild switch --flake .#desktop
```

The first build may take several minutes depending on your hardware and internet connection.

---

# Step 6 — Reboot

```bash
sudo reboot
```

---

# Step 7 — Select Hyprland

At the login screen, select:

```
Hyprland
```

Then log in normally.

---

# First Login

After logging in you should have:

- Caelestia Shell
- Hyprland
- Foot
- Fish
- Fastfetch
- Starship
- Thunar
- GTK Theme
- Papirus Icons
- Bibata Cursor

Everything is configured automatically.

---

# IMPORTANT — First Time Theme Initialization

After your **first login** into Hyprland you must initialize the GTK color scheme once.

Open **Gradience** and choose:

```
Change the current scheme variant
```

(or the equivalent option depending on your Gradience version).

This regenerates the Material You GTK theme used by both GTK applications and **Caelestia Shell**.

Without performing this step, the shell may continue using the default colors.

This operation is only required **once** after a fresh installation.

If the colors do not update immediately, simply log out and log back in.

---

## Why is this necessary?

Caelestia Shell relies on the generated Material You GTK theme.

During a fresh installation these generated theme files do not yet exist.

Running **"Change the current scheme variant"** creates the required theme files and synchronizes the colors across:

- Caelestia Shell
- GTK3 applications
- GTK4 applications

Afterwards, everything works automatically.

---

# Updating

Keeping your system up to date is simple.

```bash
git pull

sudo nixos-rebuild switch --flake .#desktop
```

---

# Troubleshooting

## Build fails

Run:

```bash
nix flake check
```

before rebuilding.

---

## Existing configuration files

Home Manager does not overwrite existing configuration files by default.

If the build reports existing files such as:

```
~/.config/gtk-3.0

~/.config/gtk-4.0
```

rename or remove them before rebuilding.

Example:

```bash
mv ~/.config/gtk-3.0 ~/.config/gtk-3.0.backup

mv ~/.config/gtk-4.0 ~/.config/gtk-4.0.backup
```

---

## Duplicate Caelestia Shell

Symptoms include:

- duplicated shell instances;
- incorrect monitor reserved space;
- duplicated sidebars;
- large empty margin beside the bar.

Cause:

Both **UWSM** and the upstream **Caelestia systemd service** are starting the shell.

Solution:

Disable the upstream service:

```nix
programs.caelestia.systemd.enable = false;
```

Only **UWSM** should launch Caelestia Shell.

---

# Philosophy

Caelestia-NixOS intentionally keeps the repository easy to understand.

If you come from Arch Linux or another traditional Linux distribution, the project layout should feel familiar.

Application configuration is organised similarly to a traditional `~/.config` directory while remaining fully declarative through Home Manager.

The goal is to combine the familiarity of classic Linux configuration with the reproducibility of NixOS.

---

# Need Help?

If you encounter a problem, please open a GitHub Issue.

When reporting bugs, include:

- NixOS version
- hardware information
- rebuild output
- relevant logs
- screenshots if applicable

The more information you provide, the easier it will be to reproduce and solve the issue.

---

Happy hacking! 🚀
