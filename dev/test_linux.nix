{ pkgs }:

pkgs.linux.mkShell {
  buildInputs = pkgs.linux.default.defaultPkgs ++ pkgs.linux.default.utilPkgs ++ pkgs.linux.dev.goPkgs ++ pkgs.linux.dev.cppPkgs;
}
