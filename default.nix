{ mkDerivation, aeson, alex, array, async, base, bytestring
, comonad, containers, data-default, deriving-compat, directory
, filepath, free, generic-arbitrary, generic-data, happy, hpack
, lens, megaparsec, monad-loops, mtl, optparse-applicative
, poker-base, polysemy, polysemy-plugin, prettyprinter, QuickCheck
, recursion-schemes, scientific, singletons, sort, stdenv
, string-conversions, text, time, transformers
}:
mkDerivation {
  pname = "exploit-poker";
  version = "0.1.0.0";
  src = ./.;
  isLibrary = true;
  isExecutable = true;
  libraryHaskellDepends = [
    aeson array async base bytestring comonad containers data-default
    deriving-compat directory filepath free generic-arbitrary
    generic-data lens megaparsec monad-loops mtl optparse-applicative
    poker-base polysemy polysemy-plugin prettyprinter QuickCheck
    recursion-schemes scientific singletons sort string-conversions
    text time transformers
  ];
  libraryToolDepends = [ alex happy hpack ];
  executableHaskellDepends = [
    aeson array async base bytestring comonad containers data-default
    deriving-compat directory filepath free generic-arbitrary
    generic-data lens megaparsec monad-loops mtl optparse-applicative
    poker-base polysemy polysemy-plugin prettyprinter QuickCheck
    recursion-schemes scientific singletons sort string-conversions
    text time transformers
  ];
  testHaskellDepends = [
    aeson array async base bytestring comonad containers data-default
    deriving-compat directory filepath free generic-arbitrary
    generic-data lens megaparsec monad-loops mtl optparse-applicative
    poker-base polysemy polysemy-plugin prettyprinter QuickCheck
    recursion-schemes scientific singletons sort string-conversions
    text time transformers
  ];
  prePatch = "hpack";
  homepage = "https://github.com/santiweight/Exploit#readme";
  license = stdenv.lib.licenses.bsd3;
}
