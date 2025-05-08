{ config, pkgs, lib, ... }:

{
  # starship - an customizable prompt for any shell
  programs.starship = {
    enable = true;
  };

  home.packages = with pkgs; [
    nerd-fonts.jetbrains-mono
  ];
}
