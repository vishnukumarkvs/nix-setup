{ config, pkgs, ... }:

{
  imports = [
    ./apps/micro.nix
  ];
  home.username = "vishnukvs";
  home.homeDirectory = "/home/vishnukvs";
  home.stateVersion = "23.05";
  targets.genericLinux.enable = true;
  home.packages = with pkgs; [
    btop
    neofetch
    qownnotes
    git
    nodejs_20
    awscli2
    vlc
    go
    gopls
    python3
    mongosh
    mongodb-compass
    obs-studio
    texliveFull
    nodePackages.aws-cdk
    postman
    helix
    xsel
    eksctl
    telegram-desktop
    qbittorrent
 ];

  programs.home-manager.enable = true;
}
