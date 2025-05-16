{ config, pkgs, lib, ... }:

{
  # Shared configuration between minimal and full setups
  
  # Git configuration
  programs.git = {
    enable = true;
  };

  programs.zsh = {
    enable = true;
    enableCompletion = true;
    autosuggestion.enable = true;
    history.size = 10000;
  };

  programs.fish = {
    enable = true;
    generateCompletions = true;
  };

  programs.fzf = {
    enable = true;
    enableBashIntegration = true;
    enableZshIntegration = true;
    enableFishIntegration = true;
  };

  programs.zoxide = {
    enable = true;
    enableBashIntegration = true;
    enableZshIntegration = true;
    enableFishIntegration = true;
  };

  programs.yazi = {
    enable = true;
    enableBashIntegration = true;
    enableZshIntegration = true;
    enableFishIntegration = true;
  };

  programs.vim = {
    enable = true;
    settings = {
      expandtab = true;
      shiftwidth = 2;
      tabstop = 2;

      number = true;
      relativenumber = true;

      mouse = "a";
    };
  };

  home.packages = with pkgs; [
    wget
    curl

    neovim

    htop
    btop

    ripgrep
    jq
    fzf
    eza
    tmux
    zoxide
    yazi
    
    zip
    unzip
    tree

    lazygit
    lazydocker
    k9s
  ];
}
