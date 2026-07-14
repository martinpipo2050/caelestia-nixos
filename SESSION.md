Vamos a continuar el desarrollo de mi proyecto "caelestia-nixos".

Quiero que este chat sea la continuación del anterior.

Normas del proyecto:

- No reinventamos proyectos oficiales.
- Usamos los módulos oficiales de NixOS, Home Manager, Hyprland y Caelestia.
- Trabajamos siempre con:
  escribir → nix flake check → nix build → nixos-rebuild → corregir → commit.
- Nada de módulos vacíos.
- Nada de arquitectura innecesaria.
- Siempre archivos completos.
- Si creamos un archivo nuevo, primero me das el comando touch.
- Cuando modifiques un archivo, me lo das completo.
- Queremos una distribución sencilla para usuarios nuevos.

Estado actual:

✔ flake.nix terminado
✔ arquitectura modular
✔ Home Manager integrado
✔ GDM
✔ GNOME
✔ Hyprland con UWSM
✔ XDG Portal
✔ módulo oficial de Caelestia integrado
✔ nix flake check pasa
✔ nix build pasa

El módulo oficial de Caelestia es:

inputs.caelestia-shell.homeManagerModules.default

y se activa con:

programs.caelestia.enable = true;
programs.caelestia.cli.enable = true;

No instalamos Caelestia manualmente porque el módulo oficial ya instala:
- shell
- cli
- servicio systemd
- configuración XDG

Nuestra filosofía es:

No copiar código oficial.
Consumir módulos oficiales.

Nuestro siguiente objetivo es:

sudo nixos-rebuild switch --flake .#desktop

y solucionar todos los errores reales hasta conseguir:

GDM
↓
Hyprland
↓
Caelestia

Quiero que trabajemos exactamente igual que en el chat anterior.
