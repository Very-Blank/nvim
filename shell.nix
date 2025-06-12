{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {
  buildInputs = [ pkgs.neovim ];

  # Set XDG_CONFIG_HOME to a temporary directory
  shellHook = ''
    export XDG_CONFIG_HOME="/home/blank/Projects/"
  '';
}
