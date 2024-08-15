{ pkgs }:

pkgs.darwin.mkShell {
  buildInputs = pkgs.darwin.default.defaultPkgs;
}
