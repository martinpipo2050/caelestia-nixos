{ pkgs, ... }:

{
  fonts = {
    enableDefaultPackages = true;

    packages = with pkgs; [

      # Noto
      noto-fonts
      noto-fonts-cjk-sans
      noto-fonts-cjk-serif
      noto-fonts-color-emoji

      # UI
      rubik

      # Monoespaciadas
      iosevka
      nerd-fonts.jetbrains-mono

      # Compatibilidad
      liberation_ttf
      dejavu_fonts
    ];
  };
}
