{
  description = "My Ubuntu Nix";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixpkgs-unstable";
    nixgl.url = "github:nix-community/nixGL";
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    ghostty = {
      url = "github:ghostty-org/ghostty";
    };
  };
  outputs = {
    nixpkgs,
    nixgl,
    home-manager,
    ghostty,
    ...
  }: let
    # system = "aarch64-linux"; If you are running on ARM powered computer
    system = "x86_64-linux";
    overlays = [nixgl.overlay];
    pkgs = nixpkgs.legacyPackages.${system};
  in {
    homeConfigurations = {
      vishnukvs = home-manager.lib.homeManagerConfiguration {
        inherit pkgs;
        modules = [
            {
              nixpkgs.config.allowUnfree = true;
              nixpkgs.config.allowInsecurePackages = true;
              home.packages = [
                ghostty.packages.x86_64-linux.default
              ];
            }
          ./home-manager/home.nix
        ];
      };
    };
  };
}

