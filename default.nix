{ pkgs ? import (fetchTarball "https://github.com/NixOS/nixpkgs/archive/nixos-20.03-small.tar.gz") {} }:

with pkgs;
let
  gems = bundlerEnv {
    name = "amitlevy.com";
    inherit ruby;
    gemdir = ./.;
  };

in stdenv.mkDerivation {
  name = "amitlevy.com";
  buildInputs = [ gems ruby ];
  builder = writeText "builder.sh" ''
    source ${stdenv}/setup
    cp -r $src/* .
    jekyll build
    mkdir -p $out
    cp -r _site/* $out/
    '';
  src = ./.;
}
