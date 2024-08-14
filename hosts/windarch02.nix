{ pkgs }:

pkgs.linux.buildEnv {
  name = "windarch02";
  paths = pkgs.linux.default.defaultPkgs ++ pkgs.linux.default.utilPkgs;
}