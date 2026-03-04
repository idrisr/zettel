{
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/25.11";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { nixpkgs, flake-utils, ... }:
    flake-utils.lib.eachSystem
      [ "x86_64-linux" "aarch64-darwin" ]
      (system:
        let
          pkgs = nixpkgs.legacyPackages.${system};
          zettel = pkgs.callPackage ./zettel-plugin.nix { };
        in
        {
          packages = { default = zettel; };
          overlays.default = {
            zettel = final: prev: {
              zettel = prev.callPackage ./zettel-plugin.nix { };
            };
          };
        });
}
