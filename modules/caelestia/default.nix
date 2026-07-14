{ inputs, ... }:

{
  imports = [
    inputs.caelestia-shell.homeManagerModules.default

    ./shell.nix
    ./settings.nix
    ./dotfiles.nix
  ];
}
