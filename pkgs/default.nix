{ platformPkgs }:

{
  defaultPkgs = with platformPkgs; [
    vim
    btop
    curl
    wget
    fastfetch
    git
    git-lfs
    man
    less
    podman
    feh
    mpv
    p7zip
    pass
    home-manager
  ];

  utilPkgs = with platformPkgs; [
    qtpass
    ani-cli
  ];
}
