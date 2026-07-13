{ ... }:

{
  imports = [
    ./boot.nix
    ./locale.nix
    ./networking.nix
    ./audio.nix
    ./graphics.nix
    ./packages.nix
    ./services.nix
    ./users.nix
    ./nix.nix
  ];
}
