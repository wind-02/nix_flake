{ pkgs }:

{
  hosts = {
    windarch01 = import ./hosts/windarch01.nix { inherit pkgs; };
    windarch02 = import ./hosts/windarch02.nix { inherit pkgs; };
    userland = import ./hosts/userland.nix { inherit pkgs; };
    code_server = import ./hosts/code_server.nix { inherit pkgs; };
  };

  dev = {
    test = import ./dev/test.nix { inherit pkgs; };
  };
}