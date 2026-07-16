# Caelestia-NixOS

> **Declarative NixOS with the familiarity of `~/.config`**

A clean, modular and reproducible NixOS desktop built around **Hyprland**, **Home Manager** and **Caelestia Shell**.

---

## Current Release

**Version:** 1.1 — Renaissance

**Status:** Stable

---

## Overview

Caelestia-NixOS is an opinionated NixOS configuration focused on simplicity, modularity and reproducibility.

The goal of this project is not only to provide a beautiful desktop, but also to document every important decision so that others can understand how the system works and confidently build upon it.

Rather than sharing a collection of configuration files, this repository shares the complete journey of building and maintaining a modern declarative Linux desktop.

---

## Philosophy

Technology should empower people, not intimidate them.

Many people are interested in NixOS but never take the first step because they believe it is too complex.

Caelestia-NixOS exists to demonstrate the opposite.

With patience, curiosity and good documentation, even complex systems become approachable.

The project follows one simple idea:

> **Understanding is more valuable than copying.**

Every module, every configuration file and every architectural decision included in this repository exists because it was understood before being accepted.

---

## Features

- Declarative NixOS configuration
- Modular repository structure
- Home Manager integration
- Hyprland desktop
- UWSM session management
- Official Caelestia Shell integration
- Reproducible configuration
- Professional documentation
- Architecture Decision Records
- Troubleshooting guides
- Development documentation
- Long-term roadmap

---

## Screenshots

The project focuses on both the user experience and the development experience.

### Living with Caelestia

The default desktop after installation.

![Caelestia Desktop](assets/images/desktop.png)

---

### Building Caelestia

The same system used while developing, documenting and maintaining the project.

![Development Environment](assets/images/desktop-red.png)

### Desktop

> *(Desktop screenshot)*

### Repository

> *(Repository structure screenshot)*

### Documentation

> *(Documentation screenshot)*

---

## Why This Project Exists

Caelestia-NixOS was created to prove that learning and building can happen at the same time.

Instead of hiding complexity, this repository explains it.

Instead of copying solutions without understanding them, every important decision is documented.

Instead of focusing only on the final result, the project also documents the path taken to reach it.

Learning is part of the software.

Documentation is part of the software.

Understanding is part of the software.

---

## Design Principles

- Documentation First
- Upstream First
- Reproducibility
- Small Modular Components
- Understand Everything
- Learn by Building

---

## First Boot

After logging into Hyprland for the first time, open the **Caelestia Settings** application and select:

**Change the current scheme variant**

This initializes the theme correctly so that Caelestia Shell loads the expected colour palette.

This step only needs to be performed once after installation.

---

## Repository Structure

The repository is organized to keep the system modular, maintainable and easy to understand.

```text
.
├── assets/                 # Images and project assets
├── docs/                   # Project documentation
│   ├── internal/           # Development notes
│   ├── getting-started.md
│   ├── development.md
│   ├── history.md
│   ├── philosophy.md
│   ├── faq.md
│   ├── troubleshooting.md
│   └── releases.md
│
├── hosts/                  # Host-specific configuration
├── modules/                # Reusable NixOS modules
├── scripts/                # Utility scripts
│
├── flake.nix
├── flake.lock
│
├── README.md
├── ARCHITECTURE.md
├── CHANGELOG.md
├── CONTRIBUTING.md
├── MANIFESTO.md
├── DECISIONS.md
├── ROADMAP.md
└── LICENSE
```

Every directory has a single responsibility.

Keeping the repository organized makes it easier to understand, extend and maintain.

---

# Getting Started

## Requirements

Before installing Caelestia-NixOS you should have:

- Basic knowledge of Linux
- A working NixOS installation
- Git
- Internet connection

No previous Nix experience is required.

The documentation has been written with new users in mind.

---

## Clone the Repository

```bash
git clone https://github.com/martinpipo2050/caelestia-nixos.git

cd caelestia-nixos
```

---

## Build

```bash
sudo nixos-rebuild switch --flake .#desktop
```

The configuration is fully declarative.

Future updates only require rebuilding the system.

---

## Updating

Updating the project is straightforward.

```bash
git pull

sudo nixos-rebuild switch --flake .#desktop
```

---

## First Login

After the first successful login into Hyprland:

Open **Caelestia Settings**

Select:

> **Change the current scheme variant**

This generates the theme configuration required by Caelestia Shell.

Without this step the desktop may not use the expected colour palette.

It only needs to be done once.

---

# Documentation

One of the primary goals of this project is documentation.

Every important aspect of the system has its own document.

| Document | Description |
|----------|-------------|
| Getting Started | Installation guide |
| Development | Development workflow |
| Philosophy | Project vision |
| History | Project evolution |
| FAQ | Frequently asked questions |
| Troubleshooting | Common issues |
| Releases | Release history |
| Architecture | Repository design |
| Decisions | Important architectural decisions |

If you are new to the project, we recommend reading the documentation in this order:

1. Getting Started
2. Philosophy
3. Architecture
4. Development
5. FAQ
6. Troubleshooting

---

# Architecture

The repository follows a modular architecture.

Each component has a clearly defined responsibility.

This makes the project easier to maintain and easier to extend.

Whenever possible the project prefers official upstream modules over custom implementations.

Writing less code often results in a more reliable system.

One practical example is the integration with **UWSM**.

Instead of maintaining a custom startup service, the project relies on UWSM to launch the desktop session correctly.

This approach avoids duplicated Quickshell instances and keeps the configuration aligned with upstream best practices.

---

# Development

Caelestia-NixOS is developed with a simple principle:

> **Every important decision should be understandable.**

The objective is not simply to make the system work.

The objective is to build a system that is easy to understand, easy to maintain and enjoyable to improve.

Every new feature should make the project simpler, not more complicated.

Whenever possible, existing upstream solutions are preferred over custom implementations.

Good engineering is often about removing complexity instead of adding it.

---

# Project Principles

The project is guided by a small number of principles.

## Documentation First

Documentation is part of the software.

A feature is not considered complete until it is properly documented.

---

## Upstream First

Whenever possible, official upstream modules are preferred.

Maintaining less custom code reduces long-term maintenance and improves compatibility.

---

## Simplicity

Simple systems are easier to understand.

Simple code is easier to maintain.

Simple documentation helps more people contribute.

---

## Learn by Building

Reading documentation is important.

Building real systems is even more valuable.

Every bug solved becomes knowledge.

Every mistake becomes experience.

---

## Share Knowledge

Knowledge grows when it is shared.

This repository exists to help others understand NixOS, not simply to provide configuration files.

---

# Roadmap

The long-term goal of Caelestia-NixOS is continuous improvement.

## Version 1.1 — Renaissance

- Complete documentation
- Repository reorganization
- Improved architecture
- UWSM integration
- Professional project structure

---

## Version 1.2

Planned improvements include:

- Additional automation
- More desktop customization
- Improved installer documentation
- More screenshots
- Additional examples

---

## Version 2.0

Long-term goals:

- Expanded documentation
- Community contributions
- Additional host configurations
- Continuous refinement
- Better onboarding for new users

---

# Contributing

Contributions are always welcome.

If you would like to contribute:

- Read the documentation.
- Open an Issue before proposing major changes.
- Keep modules small and focused.
- Follow the existing coding style.
- Update the documentation whenever necessary.

Helping improve the documentation is just as valuable as improving the code.

---

# Human + AI

One of the most unusual aspects of this repository is how it was developed.

Caelestia-NixOS was built through a close collaboration between Martin and ChatGPT.

Artificial Intelligence was never used to replace learning.

Instead, it was used to accelerate understanding.

Every important decision was discussed.

Every architectural choice was reviewed.

Every significant change was understood before becoming part of the repository.

If you would like to learn more about this process, please read:

**HUMAN_AI.md**

---

# Why This Matters

This repository is not only about Linux.

It is about learning.

It is about curiosity.

It is about documenting the journey so that someone else can follow it more easily.

If this project helps even one person take their first steps with NixOS, then it has already achieved one of its goals.

---

# Acknowledgements

Caelestia-NixOS would not exist without the incredible work of the open-source community.

Special thanks to:

- The NixOS community
- Home Manager
- Hyprland
- UWSM
- Caelestia Shell
- Every contributor who shares knowledge and makes open source better.

This project stands on the shoulders of many amazing people.

Thank you.

---

# License

This project is released under the MIT License.

See the **LICENSE** file for complete information.

---

# Final Thoughts

Caelestia-NixOS was never intended to be just another NixOS configuration.

From the very beginning, the goal was different.

The goal was to build a system that could be understood.

A repository that could be explored.

Documentation that could be read.

Architecture that could be followed.

A project that encourages people to ask questions instead of feeling intimidated by complexity.

Because technology should empower people.

Not discourage them.

---

# Why We Share It

This repository is shared freely because knowledge grows when it is shared.

If someone discovers NixOS through this project...

If someone understands Home Manager for the first time...

If someone finally decides to try Hyprland...

If someone realizes that declarative systems are not as frightening as they first appeared...

Then this project has already achieved its purpose.

---

# One Last Thing

If you are reading this because you think NixOS is too difficult...

Start anyway.

You do not need to know everything before you begin.

Every expert started exactly where you are now.

Take your time.

Read the documentation.

Experiment.

Break things.

Fix them.

Repeat.

One day you will look back and realize how much you have learned.

---

> **"Understanding is more valuable than copying."**

---

**Created by Martin**

**Caelestia-NixOS**

**Version 1.1 — Renaissance**

---

*Built with curiosity.*

*Documented with care.*

*Shared so others can learn.*

**Happy hacking.**
