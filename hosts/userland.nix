{ pkgs }:

pkgs.aarch.buildEnv {
  name = "userland";
  paths = pkgs.aarch.default.defaultPkgs ++ pkgs.aarch.default.utilPkgs ++ pkgs.aarch.dev.goPkgs ++ pkgs.aarch.dev.cppPkgs;
}