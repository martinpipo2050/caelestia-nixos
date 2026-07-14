{ ... }:

{
  home.sessionVariables = {
    EDITOR = "micro";
    TERMINAL = "foot";
  };

  programs.fish = {
    enable = true;

    shellAliases = {
      ls = "eza --icons --group-directories-first";
      ll = "eza -lh --icons --group-directories-first";
      la = "eza -a --icons --group-directories-first";
      lla = "eza -lah --icons --group-directories-first";
      tree = "eza --tree --icons";
    };

    shellAbbrs = {
      lg = "lazygit";
      gd = "git diff";
      ga = "git add .";
      gc = "git commit -am";
      gl = "git log";
      gs = "git status";
      gst = "git stash";
      gsp = "git stash pop";
      gp = "git push";
      gpl = "git pull";
      gsw = "git switch";
      gsm = "git switch main";
      gb = "git branch";
      gbd = "git branch -d";
      gco = "git checkout";
      gsh = "git show";
    };

    interactiveShellInit = ''
      # Disable Fish default greeting
      set -g fish_greeting

      # Direnv
      command -q direnv; and direnv hook fish | source

      # Zoxide
      command -q zoxide; and zoxide init fish --cmd cd | source

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
  };
}
