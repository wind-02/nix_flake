{ pkgs }:

pkgs.linux.buildEnv {
  name = "windarch01";
  paths = pkgs.linux.default.defaultPkgs ++ pkgs.linux.default.utilPkgs;
}