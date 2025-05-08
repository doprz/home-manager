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

  home.packages = with pkgs; [
    wget
    curl

    vim
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
  ];
}
