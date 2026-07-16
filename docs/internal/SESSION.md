# Session Context

This document contains the current state of the project.

It is intended to provide enough context for a new development session without having to reconstruct previous conversations.

Whenever the architecture changes, this document should be updated.

---

# Project

Name

Caelestia-NixOS

Repository

https://github.com/martinpipo2050/caelestia-nixos

Current branch

main

Current version

1.0

Status

Active development

---

# Vision

Caelestia-NixOS aims to provide a clean, modular and reproducible desktop built around Caelestia Shell.

The project prioritizes simplicity, reproducibility and maintainability over unnecessary complexity.

The long-term objective is to provide a desktop experience that feels as familiar as managing traditional dotfiles while taking full advantage of NixOS.

---

# Philosophy

The project follows a small number of fundamental principles.

• Upstream first.

Whenever an official module exists, it should be preferred over custom implementations.

• Declarative configuration.

Everything should be reproducible from Git.

• Modular architecture.

Each module has a single responsibility.

• Simplicity.

Configuration should be easy to locate and understand.

• Documentation is part of the project.

Important decisions must always be documented.

---

# Repository Structure

```

flake.nix

hosts/

modules/

system/

desktop/

user/

caelestia/

```

Each directory has a clearly defined responsibility.

---

# Architecture

The repository is divided into four layers.

System

↓

Desktop

↓

User

↓

Caelestia

Each layer depends only on the previous one.

---

# Current Features

Implemented

✓ Flakes

✓ Home Manager

✓ Hyprland

✓ UWSM

✓ GDM

✓ Caelestia Shell

✓ GTK integration

✓ Papirus

✓ Bibata

✓ Foot

✓ Fish

✓ Starship

✓ Fastfetch

✓ Btop

✓ Micro

✓ Thunar

✓ Declarative dotfiles

✓ Modular architecture

---

# Important Decisions

The project always prefers official upstream modules.

Home Manager manages user configuration.

Application configuration is stored using a directory layout intentionally similar to ~/.config.

Caelestia is configured through its official Home Manager module.

Hyprland sessions are managed through UWSM.

---

# Lessons Learned

## UWSM

Do not enable both UWSM and the upstream Caelestia systemd service.

Always use

```nix
programs.caelestia.systemd.enable = false;
```

Otherwise two Quickshell instances are started.

Symptoms include:

- duplicated monitor reserved space

- duplicated shell processes

- incorrect desktop layout

---

## Documentation

Good documentation prevents repeated mistakes.

Every important architectural decision should be written down.

---

## Upstream

Avoid modifying upstream projects whenever possible.

Configuration should happen through supported interfaces.

---

# Development Workflow

Every change follows the same process.

Edit

↓

nix flake check

↓

sudo nixos-rebuild switch

↓

Testing

↓

Commit

↓

Push

---

# Current Priorities

Version 1.1

Documentation

Repository cleanup

Installation guide

Architecture guide

Repository consistency

---

# Long-term Goals

Optional desktop profiles

Multiple hosts

Hardware profiles

CI

Documentation website

Installer helper

---

# Future Sessions

When starting a new development session, read:

README.md

ROADMAP.md

DECISIONS.md

CHANGELOG.md

SESSION.md

before making architectural changes.

---

# Final Goal

The project should remain:

Simple.

Modular.

Declarative.

Reproducible.

Easy to understand.

Easy to maintain.

Friendly to newcomers.

