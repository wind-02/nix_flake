{ platformPkgs }:

{
  goPkgs = with platformPkgs; [
    go
    golangci-lint
    gopls
    gotests
    godef
    gogetdoc
    impl
    gomodifytags
    protobuf
    protoc-gen-go
  ];

  cppPkgs = with platformPkgs; [
    gcc
    gdb
    cmake
    clang-tools
    clang
  ];
}