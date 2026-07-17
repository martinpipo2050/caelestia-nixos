{ lib, ... }:

{
  programs.caelestia = {
    enable = true;

    cli.enable = true;
  };

  programs.fish.interactiveShellInit = lib.mkAfter ''
    # Caelestia terminal colour sequences
    test -f ~/.local/state/caelestia/sequences.txt; and cat ~/.local/state/caelestia/sequences.txt

    # Foot prompt marks
    function mark_prompt_start --on-event fish_prompt
      echo -en "\e]133;A\e\\"
    end

    # User custom configuration
    set -l cConf "$HOME/.config/caelestia"
    test -f "$cConf/user-config.fish"; and source "$cConf/user-config.fish"
  '';
}
