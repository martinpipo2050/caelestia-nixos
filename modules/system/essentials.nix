{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [

    git
    curl
    wget

    tree
    file
    which

    fastfetch
    btop

    micro

    pciutils
    usbutils

  ];
}
