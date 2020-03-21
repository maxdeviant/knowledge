with import <nixpkgs> {};

stdenv.mkDerivation {
  name = "knowledge";

  buildInputs = [
    mdbook
  ];
}
