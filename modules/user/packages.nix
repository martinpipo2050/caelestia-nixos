{ pkgs, ... }:

{
  home.packages = with pkgs; [

    # Utilidades
    fastfetch
    btop
    tree
    micro

  ];
}
