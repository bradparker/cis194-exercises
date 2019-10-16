{ mkDerivation, base, containers, hedgehog, hspec
, hw-hspec-hedgehog, MonadRandom, mtl, stdenv, lens, megaparsec
, utility-ht
}:
mkDerivation {
  pname = "stacktrace-cis194";
  version = "0.1.0.0";
  src = ./.;
  libraryHaskellDepends = [ base containers MonadRandom mtl lens megaparsec utility-ht ];
  testHaskellDepends = [
    base containers hedgehog hspec hw-hspec-hedgehog
  ];
  homepage = "https://github.com/stacktracehq/cosmos/tree/master/training/CIS194";
  description = "Resources for working through CIS194 together";
  license = stdenv.lib.licenses.bsd3;
}
