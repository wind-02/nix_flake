[![GitHub Actions Status](https://github.com/wind-02/nix_flake/actions/workflows/flake.yml/badge.svg)](https://github.com/wind-02/nix_flake/actions/workflows/flake.yml)

# Nix flake
- Install Nix package manager
```
sh <(curl -L https://nixos.org/nix/install)

echo "export PATH=$HOME/.nix-profile/bin:$PATH" > ~/.bashrc
source ~/.bashrc
```

- copy project
```
rm -rf ~/.config/nix
mkdir -p ~/.config/nix/flake
cp -rf . ~/.config/nix/flake
echo "extra-experimental-features = nix-command flakes" > ~/.config/nix/nix.conf
```

- activate flake
```
cd ~/.config/nix/flake

nix flake update
nix profile install .#name
```
