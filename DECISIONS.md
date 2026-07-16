# Architecture Decision Records (ADR)

This document records the most important architectural decisions taken during the development of **Caelestia-NixOS**.

The purpose of these records is to explain **why** a decision was made, not only **what** was implemented.

Whenever an important architectural decision is taken, a new ADR should be added.

---

# ADR-001

## Upstream First

**Status**

Accepted

### Context

Many projects maintain local patches or copy configuration from upstream repositories.

This approach quickly becomes difficult to maintain.

### Decision

Caelestia-NixOS always prefers official upstream integrations whenever possible.

Examples include:

- NixOS modules
- Home Manager modules
- Hyprland modules
- Caelestia Shell Home Manager module

### Consequences

Advantages

- Easier upgrades.
- Less maintenance.
- Better compatibility.
- Fewer custom patches.

Trade-offs

- Occasionally upstream decisions must be accepted.
- Configuration may require learning official module options.

---

# ADR-002

## Modular Architecture

**Status**

Accepted

### Context

Large configuration files become difficult to understand and maintain.

### Decision

The repository is divided into four logical layers.

```text
System

↓

Desktop

↓

User

↓

Caelestia
```

Each module has a single responsibility.

### Consequences

Advantages

- Easy navigation.
- Small files.
- Independent evolution.
- Better readability.

---

# ADR-003

## Declarative Dotfiles

**Status**

Accepted

### Context

Traditional Linux systems configure applications directly inside `~/.config`.

NixOS encourages declarative configuration.

### Decision

Application configuration is stored inside the repository using a directory layout intentionally similar to `~/.config`.

Example

```text
modules/

    caelestia/

        fish/

        foot/

        fastfetch/

        btop/

        micro/
```

Home Manager creates the symbolic links automatically.

### Rationale

This keeps the familiarity of traditional Linux systems while preserving reproducibility.

### Consequences

Advantages

- Easy migration from Arch Linux.
- Easy discovery.
- Familiar directory layout.
- Fully reproducible configuration.

---

# ADR-004

## UWSM manages graphical startup

**Status**

Accepted

### Context

Caelestia Shell provides an optional Home Manager user service.

When Hyprland is launched through UWSM, that service starts an additional Quickshell instance.

This causes:

- duplicated shell instances;
- duplicated reserved monitor space;
- incorrect desktop layout.

### Decision

When using UWSM:

```nix
programs.caelestia.systemd.enable = false;
```

Only UWSM is responsible for starting the graphical shell.

### Consequences

Advantages

- Single Quickshell instance.
- Correct monitor reserved space.
- Cleaner startup.
- Simpler session management.

---

# ADR-005

## Documentation is part of the architecture

**Status**

Accepted

### Context

Configuration evolves quickly.

Without documentation, architectural decisions become difficult to understand over time.

### Decision

Documentation is considered part of the project itself.

Every significant architectural decision should be documented.

The repository always keeps:

- README
- ROADMAP
- CHANGELOG
- SESSION
- ADR

synchronized with the current state of the project.

### Consequences

Advantages

- Easier maintenance.
- Better onboarding.
- Simpler collaboration.
- Long-term project continuity.

---

# ADR-006

## Simplicity over cleverness

**Status**

Accepted

### Context

Complex Nix expressions can reduce readability.

### Decision

Whenever multiple implementations are possible, the simplest understandable solution is preferred.

Code should be easy to read six months later.

### Consequences

Advantages

- Easier debugging.
- Easier maintenance.
- Lower learning curve.

---

# ADR-007

## Reproducibility above customization

**Status**

Accepted

### Context

The primary objective of the project is reproducibility.

### Decision

A clean installation should always reproduce the same environment from Git alone.

Manual configuration should be avoided whenever possible.

### Consequences

Advantages

- Predictable systems.
- Easier backups.
- Easier migration.
- Easier recovery.

---

# Future ADRs

Future architectural decisions should continue using this format.

Typical examples include:

- New desktop environments.
- Multiple hosts.
- Installer design.
- CI/CD pipeline.
- Hardware profiles.
