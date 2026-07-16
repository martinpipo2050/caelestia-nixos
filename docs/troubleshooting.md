# Troubleshooting

This document collects the most common problems and their solutions.

---

## Duplicate Caelestia Shell

Symptoms:

- duplicated sidebar
- duplicated shell
- incorrect reserved monitor space

Cause:

Both UWSM and the upstream systemd service are launching Caelestia Shell.

Solution:

```nix
programs.caelestia.systemd.enable = false;
```

---

## Existing GTK configuration

Home Manager refuses to overwrite existing files.

Rename or remove:

```
~/.config/gtk-3.0

~/.config/gtk-4.0
```

Then rebuild.

---

## Theme colors not applied

Open Gradience.

Select:

```
Change the current scheme variant
```

Log out and back in.

---

## Build failures

Always run:

```bash
nix flake check
```

before rebuilding.

---

More solutions will be added as the project evolves.
