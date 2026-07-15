{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [

    git
    curl
    wget

    tree
    file
    which

    pciutils
    usbutils

  ];
}
