{ inputs, ... }:

{
  imports = [
    inputs.caelestia-shell.homeManagerModules.default

    ./cli.nix
    ./settings.nix
    ./dotfiles.nix
    ./activation.nix
  ];
}
