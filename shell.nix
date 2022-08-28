{ pkgs2205 ? import (fetchTarball "http://nixos.org/channels/nixos-22.05/nixexprs.tar.xz") {} }:

pkgs2205.mkShell {
  buildInputs = [
    pkgs2205.nodejs-18_x
  ];
}
