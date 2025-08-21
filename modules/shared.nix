{
  config,
  pkgs,
  lib,
  ...
}:
{
  # Shared configuration between minimal and full setups

  # Git configuration
  # programs.git = {
  # enable = true;
  # };

  programs.zsh = {
    enable = true;
    enableCompletion = true;
    autosuggestion.enable = true;
    history.size = 10000;
  };

  programs.fish = {
    enable = true;
    shellInit = ''
      set -gx GPG_TTY (tty)
      set -gx NIXD_FLAGS --inlay-hints=true
    '';
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

  programs.direnv = {
    enable = true;
    enableBashIntegration = true;
    enableZshIntegration = true;
    # Note, enabling the direnv module will always activate its functionality
    # for Fish since the direnv package automatically gets loaded in Fish.
    # If this is not the case try adding
    # enableFishIntegration = true;
    nix-direnv.enable = true;
  };

  home.packages = with pkgs; [
    wget
    curl

    neovim
    helix

    htop
    btop

    ripgrep
    jq
    fzf
    fd
    eza
    tmux
    zellij
    zoxide
    yazi

    rustup
    go

    zip
    unzip
    tree
    gh

    lazygit
    lazydocker

    scc
    onefetch

    k9s

    # Language Servers
    lua-language-server
    stylua
    # rust-analyzer # Provided by rustup
    gopls
    zls
    # typescript-language-server
    vtsls
    nixd

    eslint
    prettier
    biome

    dot-language-server
    yaml-language-server
    taplo
    marksman

    # Nix Formatters
    alejandra
    nixfmt-rfc-style
  ];
}
