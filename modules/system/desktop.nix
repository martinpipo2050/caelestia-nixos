{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [

    # Gestor de archivos
    thunar
    tumbler
    thunar-volman
    thunar-archive-plugin
    thunar-shares-plugin

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
    pciutils
    usbutils

    # Visores
    loupe
    evince

    # Tema GTK
    adw-gtk3

    # Iconos
    papirus-icon-theme

    # Cursores
    bibata-cursors
    
    # Sonido
    pavucontrol
    easyeffects
    
    # Utilidades del sistema
    brightnessctl
    wl-clipboard
    lm_sensors

  ];
}
