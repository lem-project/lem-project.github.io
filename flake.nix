{
  description = "Lem project website";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, flake-utils }:
    flake-utils.lib.eachDefaultSystem (system:
      let
        pkgs = nixpkgs.legacyPackages.${system};
      in
      {
        devShells.default = pkgs.mkShell {
          buildInputs = with pkgs; [
            hugo
          ];

          shellHook = ''
            echo "Lem website development environment"
            echo "Commands:"
            echo "  make server  - Start development server"
            echo "  make build   - Build the site"
            echo "  hugo server -D  - Start server with drafts"
          '';
        };

        packages.default = pkgs.stdenv.mkDerivation {
          pname = "lem-website";
          version = "0.1.0";
          src = ./.;

          buildInputs = [ pkgs.hugo ];

          buildPhase = ''
            hugo --minify
          '';

          installPhase = ''
            cp -r public $out
          '';
        };
      }
    );
}
