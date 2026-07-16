# Development Guide

Welcome to the development guide for **Caelestia-NixOS**.

This document explains how the project is developed, tested and maintained.

It is intended for contributors and for future versions of the project.

---

# Development Philosophy

Caelestia-NixOS is developed with a single objective:

Build a desktop that remains simple, modular and reproducible.

Every change should improve at least one of these areas:

- readability
- maintainability
- modularity
- reproducibility
- user experience

If it does not improve any of them, it probably does not belong in the project.

---

# Development Workflow

Every change follows the same workflow.

```
Understand

↓

Design

↓

Implement

↓

Build

↓

Test

↓

Document

↓

Commit

↓

Push
```

Documentation is considered part of development.

A feature is not complete until it has been documented.

---

# Repository Workflow

Typical daily workflow:

```bash
git pull

edit files

nix flake check

sudo nixos-rebuild switch --flake .#desktop

test

git add .

git commit

git push
```

Small commits are preferred over large commits.

---

# Testing

Every modification should be tested before being committed.

Minimum checklist:

- Builds successfully
- Boots successfully
- Desktop loads correctly
- Applications start correctly
- No duplicated services
- No unnecessary warnings
- Documentation updated

---

# Module Guidelines

Every module should configure exactly one component.

Good examples:

```
modules/user/firefox

modules/user/fish

modules/user/foot

modules/system/audio

modules/system/fonts
```

Avoid:

```
desktop-everything.nix

apps.nix

misc.nix
```

If a file starts becoming large, split it.

---

# Naming

Prefer descriptive names.

Good:

```
fonts.nix

fish.nix

foot.nix

hyprland.nix
```

Avoid abbreviations whenever possible.

---

# Documentation

Documentation evolves together with the project.

Whenever architecture changes:

Update:

- README.md
- CHANGELOG.md
- DECISIONS.md
- SESSION.md

If required:

- ROADMAP.md

---

# Bug Reports

Every bug should answer:

What happened?

Why did it happen?

How was it fixed?

Can it happen again?

If the answer is yes, document it.

---

# Lessons Learned

Every solved problem becomes knowledge.

Examples:

- Duplicate Quickshell instances caused by UWSM + systemd.
- Existing GTK configuration blocking Home Manager.
- Upstream modules are easier to maintain.
- Small modules simplify debugging.

Knowledge should never be lost.

---

# Architectural Changes

Before changing architecture ask yourself:

Does this reduce complexity?

Will it be easier to understand?

Can a new contributor find it?

Will this still make sense in two years?

If the answer is no, reconsider the change.

---

# User Experience

The user experience is as important as the code.

Good defaults reduce documentation.

Automation reduces mistakes.

Simple layouts reduce learning time.

The best configuration is the one users do not have to think about.

---

# Release Checklist

Before publishing a release verify:

✓ flake builds

✓ Home Manager works

✓ Hyprland starts correctly

✓ Caelestia Shell starts correctly

✓ UWSM session works

✓ Documentation updated

✓ CHANGELOG updated

✓ ROADMAP reviewed

✓ SESSION updated

✓ No known critical bugs

---

# Long-Term Vision

Caelestia-NixOS should continue evolving without becoming more complicated.

Growth should happen through better organization, not through additional complexity.

The project should remain approachable for users discovering NixOS for the first time.

---

Happy coding!
