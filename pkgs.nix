{ nixpkgs }:

let
  linuxPkgs = nixpkgs.legacyPackages.x86_64-linux;
  aarchPkgs = nixpkgs.legacyPackages.aarch64-linux;
  darwinPkgs = nixpkgs.legacyPackages.aarch64-darwin;

  makePkgs = platformPkgs: {
    inherit platformPkgs;

    default = import ./pkgs/default.nix { inherit platformPkgs; };
    dev = import ./pkgs/dev.nix { inherit platformPkgs; };

    buildEnv = platformPkgs.buildEnv;
    mkShell = platformPkgs.mkShell;
  };

in
{
  linux = makePkgs linuxPkgs;
  aarch = makePkgs aarchPkgs;
  darwin = makePkgs darwinPkgs;
}
