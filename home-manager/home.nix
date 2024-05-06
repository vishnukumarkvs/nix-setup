{ config, pkgs, ... }:

{
  imports = [
    ./apps/micro.nix
  ];
  home.username = "vishnukvs";
  home.homeDirectory = "/home/vishnukvs";
  home.stateVersion = "23.05";
  home.packages = with pkgs; [
    btop
    neofetch
    git
    qownnotes
    nodejs_20
    awscli2
    vlc
    go
    python3
    mongosh
    mongodb-compass
    obs-studio
    texliveFull
    nodePackages.aws-cdk
    joplin-desktop
  ];

  programs.home-manager.enable = true;
}
