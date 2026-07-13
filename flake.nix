{
  description = "Caelestia-NixOS";

  inputs = {
    # Nix
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-26.05";

    home-manager = {
      url = "github:nix-community/home-manager/release-26.05";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    # Official Caelestia ecosystem
    caelestia-shell = {
      url = "github:caelestia-dots/shell";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    dotfiles = {
      url = "github:caelestia-dots/caelestia";
      flake = false;
    };
  };

  outputs = inputs@{
    self,
    nixpkgs,
    home-manager,
    ...
  }: {
  };
}
