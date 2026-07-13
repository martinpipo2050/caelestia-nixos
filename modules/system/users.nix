{ pkgs, ... }:

{
  programs.fish.enable = true;

  users.users.martin = {
    isNormalUser = true;

    description = "Martin";

    extraGroups = [
      "wheel"
      "networkmanager"
    ];

    shell = pkgs.fish;
  };
}
