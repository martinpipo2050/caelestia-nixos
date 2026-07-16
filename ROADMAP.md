# Roadmap

This roadmap describes the long-term vision of **Caelestia-NixOS**.

The goal is not to add features as quickly as possible, but to build a clean, reproducible and well documented desktop experience.

---

# Current Status

## Version 1.0

The project already provides a complete and functional desktop.

### Completed

- [x] Nix Flakes
- [x] Modular architecture
- [x] Home Manager integration
- [x] Hyprland
- [x] UWSM
- [x] GDM
- [x] XDG Desktop Portal
- [x] Caelestia Shell integration
- [x] GTK theme integration
- [x] Bibata cursor
- [x] Papirus icons
- [x] Fish
- [x] Foot
- [x] Starship
- [x] Fastfetch
- [x] Btop
- [x] Micro
- [x] Thunar integration
- [x] Declarative dotfiles
- [x] Reproducible rebuild
- [x] Clean module hierarchy

---

# Version 1.1

Focus: Documentation and user experience.

## Goals

- [ ] Rewrite README
- [ ] Complete installation guide
- [ ] Architecture documentation
- [ ] Troubleshooting guide
- [ ] Contributing guide
- [ ] Update CHANGELOG
- [ ] Document architectural decisions (ADR)
- [ ] Improve repository presentation
- [ ] Validate clean installation from vanilla NixOS

---

# Version 1.2

Focus: Desktop modularity.

Ideas currently under evaluation.

- [ ] Optional desktop profiles
- [ ] Better package separation
- [ ] Optional applications
- [ ] Improved defaults
- [ ] User customization layer

---

# Version 2.0

Long-term vision.

- [ ] Multi-host support
- [ ] Hardware profiles
- [ ] Installer helper
- [ ] Automatic post-install configuration
- [ ] Documentation website
- [ ] Continuous Integration
- [ ] Automated testing

---

# Design Principles

Every new feature should follow these principles.

- Prefer upstream modules.
- Keep modules small.
- Avoid duplicated configuration.
- Keep everything declarative.
- Documentation evolves with the code.
- User experience is as important as functionality.

---

# Project Philosophy

Caelestia-NixOS is designed to become a solid foundation rather than a collection of personal tweaks.

Every release should make the project easier to understand, easier to maintain and easier to reproduce.
