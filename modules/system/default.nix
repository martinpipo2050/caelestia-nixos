{ ... }:

{
  imports = [
    ./boot.nix
    ./hardware.nix
    ./locale.nix
    ./networking.nix
    ./audio.nix
    ./security.nix
    ./services.nix
    ./users.nix
    ./nix.nix
    ./fonts.nix
    ./essentials.nix
    ./desktop.nix
    ./system.nix
  ];
}
