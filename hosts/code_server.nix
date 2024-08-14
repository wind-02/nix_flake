{ pkgs }:

pkgs.linux.buildEnv {
  name = "code_server";
  paths = pkgs.linux.default.defaultPkgs ++ pkgs.linux.default.utilPkgs;
}