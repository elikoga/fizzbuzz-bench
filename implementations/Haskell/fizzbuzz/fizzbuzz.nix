{ mkDerivation, base, hpack, stdenv }:
mkDerivation {
  pname = "fizzbuzz";
  version = "0.1.0.0";
  src = ./.;
  isLibrary = false;
  isExecutable = true;
  libraryToolDepends = [ hpack ];
  executableHaskellDepends = [ base ];
  prePatch = "hpack";
  homepage = "https://github.com/githubuser/fizzbuzz#readme";
  license = stdenv.lib.licenses.bsd3;
}
