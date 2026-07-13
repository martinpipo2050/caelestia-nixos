# Architecture Decisions

## ADR-001

### Hosts represent machines

Status: Accepted

Examples:

- desktop
- laptop
- server
- vm

---

## ADR-002

Separate responsibilities into:

- system
- user
- caelestia

Status: Accepted

## ADR-003

### Dotfiles are not part of the repository

Status: Accepted

The official Caelestia dotfiles remain in their own repository.

This project only integrates them into Home Manager.

Rationale:

- Easier updates.
- Respect upstream.
- Less maintenance.
- Clear separation of responsibilities.
