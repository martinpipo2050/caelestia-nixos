{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [

    # Gestor de archivos
    thunar
    tumbler
    thunar-volman
    thunar-archive-plugin

    # Compresión
    file-roller
    zip
    unzip
    p7zip

    # Discos
    gvfs
    udisks2
    ntfs3g
    exfatprogs

    # Visores
    loupe
    evince

  ];
}
