{ ... }:

{
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

      ga = "git add .";
      gb = "git branch";
      gbd = "git branch -d";
      gc = "git commit -am";
      gco = "git checkout";
      gd = "git diff";
      gl = "git log";
      gp = "git push";
      gpl = "git pull";
      gs = "git status";
      gsh = "git show";
      gsm = "git switch main";
      gsp = "git stash pop";
      gst = "git stash";
      gsw = "git switch";
    };

    interactiveShellInit = ''
      set -g fish_greeting

      if test -f ~/.local/state/caelestia/sequences.txt
        cat ~/.local/state/caelestia/sequences.txt
      end

      echo '     ______           __          __  _       '
      echo '    / ____/___ ____  / /__  _____/ /_(_)___ _ '
      echo '   / /   / __ `/ _ \/ / _ \/ ___/ __/ / __ `/ '
      echo '  / /___/ /_/ /  __/ /  __(__  ) /_/ / /_/ /  '
      echo '  \____/\__,_/\___/_/\___/____/\__/_/\__,_/   '

      if command -q fastfetch
        fastfetch --key-padding-left 5
      end

      if command -q starship
        starship init fish | source
      end

      if command -q direnv
        direnv hook fish | source
      end

      if command -q zoxide
        zoxide init fish --cmd cd | source
      end

      function mark_prompt_start --on-event fish_prompt
        echo -en "\e]133;A\e\\"
      end

      set -q XDG_CONFIG_HOME
      and set -l cConf $XDG_CONFIG_HOME/caelestia
      or set -l cConf $HOME/.config/caelestia

      source $cConf/user-config.fish 2>/dev/null
    '';
  };

  programs.git = {
    enable = true;

    settings.user = {
      name = "martinpipo";
      email = "maragarsal2050@gmail.com";
    };
  };
}
