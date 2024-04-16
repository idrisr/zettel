{
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/23.11";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { nixpkgs, flake-utils, ... }:
    let
      system = flake-utils.lib.system.x86_64-linux;
      pkgs = import nixpkgs { inherit system; };
      zettel = pkgs.callPackage ./zettel-plugin.nix { };
    in {
      packages.${system} = { default = zettel; };
      overlays = {
        zettel = final: prev: {
          zettel = prev.callPackage ./zettel-plugin.nix { };
        };
      };
    };
}
