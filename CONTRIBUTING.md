# Contributing

First of all, thank you for taking the time to contribute to **Caelestia-NixOS**.

The goal of this project is not simply to build a NixOS configuration, but to create a clean, modular and maintainable desktop environment that can be easily understood and reproduced.

Whether you are fixing a typo, improving documentation or implementing a new feature, your contribution is appreciated.

---

# Project Philosophy

Every contribution should follow the core principles of the project.

## Upstream First

Whenever an official NixOS, Home Manager, Hyprland or Caelestia module exists, it should always be preferred over custom implementations.

Avoid patching upstream projects unless absolutely necessary.

---

## Simplicity

Choose the simplest solution that solves the problem.

Readable code is preferred over clever code.

Someone should be able to understand the repository after opening it for the first time.

---

## Modular Design

Each module should have a single responsibility.

Large files should be split into logical modules.

Avoid creating modules that configure unrelated components.

---

## Declarative Configuration

Configuration belongs in Git.

Avoid manual setup whenever possible.

A clean installation should reproduce exactly the same desktop.

---

## Documentation

Documentation is part of the project.

Whenever architecture changes:

- update the README;
- update the ROADMAP if necessary;
- update the CHANGELOG;
- add or update an ADR when appropriate;
- update SESSION.md if the project state changes.

Code and documentation should always evolve together.

---

# Repository Structure

```
modules/

    system/

    desktop/

    user/

    caelestia/
```

Please keep this structure consistent.

Avoid introducing new top-level directories unless there is a strong architectural reason.

---

# Dotfiles

Application configuration should remain easy to locate.

The preferred layout intentionally resembles the traditional Linux `~/.config` directory.

Example:

```
modules/user/

    firefox/

    foot/

    fish/

    fastfetch/

    micro/
```

The goal is to make the repository intuitive, especially for users coming from Arch Linux or other traditional distributions.

---

# Coding Style

Prefer:

- small modules;
- descriptive names;
- explicit configuration;
- readability.

Avoid:

- unnecessary abstractions;
- duplicated configuration;
- magic values;
- undocumented behaviour.

---

# Pull Requests

Before opening a Pull Request please ensure that:

- the system builds successfully;
- `nix flake check` passes;
- the configuration has been tested;
- documentation has been updated when required.

---

# Commit Messages

Write meaningful commit messages.

Good examples:

```
Add GTK integration

Split desktop modules

Disable Caelestia systemd service under UWSM

Refactor user package modules
```

Avoid:

```
fix

update

changes

misc
```

---

# Architecture Decisions

Important architectural changes should be documented.

Please add a new ADR to `DECISIONS.md` whenever a significant design decision is introduced.

Future contributors should understand **why** something exists, not only **how** it works.

---

# Development Workflow

Typical workflow:

```
Edit

↓

nix flake check

↓

sudo nixos-rebuild switch

↓

Test

↓

Commit

↓

Push
```

Small, incremental commits are preferred over large unrelated changes.

---

# Code Review

When reviewing code, ask yourself:

- Is it simpler?
- Is it more modular?
- Does it respect upstream?
- Is it reproducible?
- Is it documented?
- Will it still make sense in one year?

If the answer is yes, the change is probably a good one.

---

# Long-Term Vision

Caelestia-NixOS aims to become more than a personal configuration.

The project should remain:

- simple;
- modular;
- declarative;
- reproducible;
- easy to understand;
- easy to maintain;
- welcoming to newcomers.

Every contribution should move the project a little closer to that vision.

---

Thank you for helping improve Caelestia-NixOS.
