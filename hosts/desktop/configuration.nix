{ ... }:

{
  imports = [
    ./hardware-configuration.nix

    ../../modules/system
    ../../modules/desktop
  ];
}
