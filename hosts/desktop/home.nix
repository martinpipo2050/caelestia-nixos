{ ... }:

{
  imports = [
    ../../modules/user
    ../../modules/caelestia
  ];

  home.username = "martin";
  home.homeDirectory = "/home/martin";

  home.stateVersion = "26.05";

  programs.home-manager.enable = true;

  programs.caelestia = {
    enable = true;
    cli.enable = true;
  };
}
