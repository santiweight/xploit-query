{ nixpkgs ? import <nixpkgs> {}
, ghc ? nixpkgs.ghc
}:

with nixpkgs;

nixpkgs.haskell.lib.buildStackProject {
  inherit ghc;
  name = "Exploit";
  buildInputs = [ zlib postgresql ];
  src = ./.;
} inherit (pkgs.darwin.apple_sdk.frameworks) Cocoa CoreServices;
