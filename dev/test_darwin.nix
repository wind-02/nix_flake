{ pkgs }:

pkgs.darwin.mkShell {
  buildInputs = pkgs.darwin.default.defaultPkgs ++ pkgs.darwin.default.utilPkgs ++ pkgs.darwin.dev.goPkgs;
}
