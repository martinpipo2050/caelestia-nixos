{ pkgs, ... }:

{
  home.packages = with pkgs; [

    # Utilidades
    fastfetch
    btop
    tree
    eza
    micro

    # GNOME
    gnome-tweaks
    gnome-extension-manager

  ];
}
