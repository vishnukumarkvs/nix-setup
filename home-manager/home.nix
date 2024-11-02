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
    bat
    neofetch
    qownnotes
    git
    nodejs_20
    typescript
    nodePackages.typescript-language-server
    npm-check-updates
    zellij
    tree
    awscli2
    vlc
    go
    gopls
    python3
    rustup
    jdk22
    parallel
    mongosh
    mongodb-tools
    mongodb-compass
    obs-studio
    nodePackages.aws-cdk
    helix
    xsel
    eksctl
    telegram-desktop
    velero
    eks-node-viewer
    terraform
    ansible
    ansible-lint
    argocd
    kubectl
    kubernetes-helm
    kustomize
    bun
    zoxide
    k9s
    istioctl
    google-cloud-sdk
    brave
    subdl
    python311Packages.pipx
    timoni
    fzf
    lazygit
    operator-sdk
    kubebuilder
    trivy
    etcd
    clickhouse
    bruno
    helmfile
    k6
    uv
    dbeaver-bin
    kubeswitch
    stern
    kube-linter
    go-jsonnet
    jsonnet-bundler
    fish
    eza
    #krew
 ];
  programs.home-manager.enable = true;
}
