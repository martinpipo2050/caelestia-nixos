{ pkgs, ... }:

{
home.packages = with pkgs; [
  # CLI
  bat
  btop
  curl
  eza
  fastfetch
  fd
  file
  fzf
  git
  jq
  lazygit
  micro
  ripgrep
  tree
  unzip
  wget
  zip
  delta

  # Apariencia
  nwg-look

  # GNOME
  gnome-extension-manager
  gnome-tweaks
  
];
}
