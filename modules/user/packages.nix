{ pkgs, ... }:

{
  home.packages = with pkgs; [

    # Utilidades
    fastfetch
    btop
    tree
    eza
    micro

    # Apariencia
    nwg-look

    # GNOME
    gnome-tweaks
    gnome-extension-manager

  ];
}
