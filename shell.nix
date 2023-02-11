{nixpkgs ? import <nixpkgs> { }, ghc ? nixpkgs.ghc}:

with nixpkgs;

haskell.lib.buildStackProject {
  name = "yesod-minimal";
  buildInputs = [
    zlib
  ];
  inherit ghc;
}
