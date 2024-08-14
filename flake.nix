{
  description = "Nix flakes";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";

    nixos-hardware.url = "github:nixos/nixos-hardware/master";

    flake-utils.url = "github:numtide/flake-utils";

    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    darwin = {
      url = "github:lnl7/nix-darwin/master";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    nur = {
      url = "github:nix-community/NUR";
    };

  };

  outputs = { nixpkgs, nixos-hardware, home-manager, darwin, nur, flake-utils, ... } @ inputs:
    let
      pkgs = import ./pkgs.nix { inherit nixpkgs; };

      result = import ./result.nix { inherit pkgs; };

    in
    {
      inherit (result) hosts dev;

    };
}
