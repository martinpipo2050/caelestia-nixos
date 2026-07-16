# Architecture

This document explains the overall architecture of **Caelestia-NixOS**.

Understanding this structure will make it easier to extend, maintain and troubleshoot the project.

---

# Design Goals

The architecture follows a few simple principles:

- Small modules
- Single responsibility
- Declarative configuration
- Reproducibility
- Upstream first
- Familiar directory layout

The repository should remain easy to understand even after years of development.

---

# High-Level Overview

```
flake.nix
    │
    ▼
hosts/
    │
    ▼
modules/
    │
    ├── system
    ├── desktop
    ├── user
    └── caelestia
```

Each layer has a clearly defined responsibility.

---

# Repository Layout

```
.
├── flake.nix
├── flake.lock
├── hosts/
├── modules/
│   ├── system/
│   ├── desktop/
│   ├── user/
│   └── caelestia/
├── docs/
└── README.md
```

---

# Layer 1 — System

Responsible for the operating system itself.

Examples:

- boot
- networking
- locale
- users
- fonts
- audio
- printing

Nothing related to desktop applications should live here.

---

# Layer 2 — Desktop

Responsible for the graphical session.

Examples:

- Hyprland
- GDM
- UWSM
- XDG Desktop Portal

The desktop layer defines how graphical applications run.

---

# Layer 3 — User

Responsible for user applications.

Examples:

- Firefox
- Foot
- Fish
- Fastfetch
- Starship
- Micro
- Btop
- Thunar

Most applications are configured through Home Manager.

---

# Layer 4 — Caelestia

Responsible for the desktop shell itself.

Examples:

- Caelestia Shell
- Shell settings
- Dotfiles
- Theme integration

This layer customizes the desktop experience without modifying upstream projects.

---

# Configuration Flow

```
flake.nix

↓

Host

↓

NixOS Modules

↓

Home Manager

↓

Applications

↓

Desktop
```

Everything originates from the flake.

---

# Why Home Manager?

Home Manager provides declarative management of user configuration.

Instead of manually editing files inside:

```
~/.config
```

the repository stores the desired configuration.

Home Manager then creates the required files automatically.

---

# Dotfile Philosophy

One of the main goals of Caelestia-NixOS is to feel familiar to users coming from traditional Linux distributions.

For that reason, application configuration is intentionally organised similarly to:

```
~/.config
```

Example:

```
modules/user/

    fish/

    foot/

    fastfetch/

    firefox/

    micro/
```

The structure should feel immediately recognisable.

---

# Upstream First

Whenever possible the project relies on official modules.

Examples include:

- NixOS modules
- Home Manager modules
- Hyprland modules
- Caelestia Shell Home Manager module

This minimizes maintenance and simplifies upgrades.

---

# UWSM

Hyprland sessions are managed by UWSM.

Because UWSM already launches graphical applications, the upstream Caelestia systemd user service is disabled.

```
programs.caelestia.systemd.enable = false;
```

Running both simultaneously creates duplicate Quickshell instances.

---

# Module Independence

Each module should configure only one thing.

Good examples:

```
modules/user/fish

modules/user/firefox

modules/user/foot
```

Avoid large modules responsible for unrelated components.

---

# Development Principles

Every architectural change should improve at least one of:

- readability;
- modularity;
- reproducibility;
- maintainability;
- simplicity.

If a change makes the repository harder to understand, it should probably be reconsidered.

---

# Future Growth

The current architecture is designed to support future features such as:

- multiple hosts;
- hardware profiles;
- optional desktop environments;
- installer automation;
- CI/CD pipelines;
- documentation website.

These additions should integrate naturally without requiring a major redesign.

---

# Final Thoughts

Good architecture is not about adding more layers.

It is about making the project easier to understand.

Every new module should make the repository simpler—not more complicated.
