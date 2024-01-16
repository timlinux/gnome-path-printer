let
  nixpkgs = builtins.fetchTarball "https://github.com/NixOS/nixpkgs/archive/b8dd8be3c790215716e7c12b247f45ca525867e2.tar.gz";
  pkgs = import nixpkgs { config = { }; overlays = [ ]; };
in
with pkgs;
mkShell {
  buildInputs = [
    rustc 
    cargo 
    pkg-config 
    pango 
    gtk3
  ];
  # DIRENV_LOG_FORMAT to reduce direnv verbosity
  # See https://github.com/direnv/direnv/issues/68#issuecomment-162639262
  shellHook = ''
     export DIRENV_LOG_FORMAT=
     echo "-----------------------"
     echo "🌈 Your Rust Dev Environment is ready."
     echo ""
     echo "📒 Build:"
     echo "cargo build"
     echo "🚀 Run:"
     echo "target/debug/gnome-path-printer"
     echo "-----------------------"
  '';
  postShellHook = ''
  '';
}
