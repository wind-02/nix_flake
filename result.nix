{ pkgs }:

{
  hosts = {
    windarch01 = import ./hosts/windarch01.nix { inherit pkgs; };
    windarch02 = import ./hosts/windarch02.nix { inherit pkgs; };
    userland = import ./hosts/userland.nix { inherit pkgs; };
    code_server = import ./hosts/code_server.nix { inherit pkgs; };
  };

  dev = {
    test_linux = import ./dev/test_linux.nix { inherit pkgs; };
    test_darwin = import ./dev/test_darwin.nix { inherit pkgs; };
  };
}
