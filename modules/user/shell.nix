{
  pkgs,
  ...
}:

{
  home.packages = with pkgs; [
    eza
    lazygit
  ];

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
      # Disable Fish default greeting
      set -g fish_greeting

      # Direnv
      command -q direnv; and direnv hook fish | source

      # Zoxide
      command -q zoxide; and zoxide init fish --cmd cd | source
    '';
  };

  programs.git = {
    enable = true;
    userName = "martinpipo";
    userEmail = "maragarsal2050@gmail.com";
  };
}
