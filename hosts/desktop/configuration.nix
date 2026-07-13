{ inputs, ... }:

{
  imports = [
    ./hardware-configuration.nix

    ../../modules/system
  ];
}
