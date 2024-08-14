{ pkgs }:

pkgs.aarch.mkShell {
  buildInputs = pkgs.aarch.default.defaultPkgs ++ pkgs.aarch.default.utilPkgs ++ pkgs.aarch.dev.goPkgs ++ pkgs.aarch.dev.cppPkgs;
}