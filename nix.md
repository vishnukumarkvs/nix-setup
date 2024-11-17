# My Nix Package Manager Setup

### Reference
https://tech.aufomm.com/my-nix-journey-use-nix-with-ubuntu/

### Get DEsktop Icons
- Add `export XDG_DATA_DIRS="$HOME/.nix-profile/share:$XDG_DATA_DIRS"` in .profile
- Sometimes, need a restart to take effect

### For unfree packages
nixpkgs.config.allowUnfree = true;
nixpkgs.config.allowInsecurePackages = true;

### Basic commands
- nix run nixpkgs#home-manager -- switch --flake nix/#$USER
- home-manager remove-generations --keep 3
- nix-collect-garbage -d
- nix flake update
- nix store gc

- `alias nhs='nix run nixpkgs#home-manager -- switch --flake nix/#$USER'` in .bashrc and do source ~./bashrc

TIP : Use home-manager like this - nix run nixpkgs#home-manager

## Top NixOs configurations
- https://nixos.wiki/wiki/Configuration_Collection

## nixGL
- https://github.com/nix-community/nixGL
- maight be still incomplete

# NixOs setup
https://www.youtube.com/watch?v=QKoQ1gKJY5A&list=PL-saUBvIJzOkjAw_vOac75v-x6EzNzZq-

## brew on ubuntu
https://www.baeldung.com/linux/homebrew#:~:text=1.-,Overview,into%20the%20command%2Dline%20interface.

systemctl --user restart pipewire
