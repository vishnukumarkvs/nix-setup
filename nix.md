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

- `alias nhs='nix run nixpkgs#home-manager -- switch --flake nix/#$USER'` in .bashrc and do source ~./bashrc

TIP : Use home-manager like this - nix run nixpkgs#home-manager
