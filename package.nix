{ stdenv, fetchurl, fetchFromGitHub, nodejs, git, python, icu }:
stdenv.mkDerivation rec {
  name = "matrix-appservice-irc-${version}";
  version = "0.7.0";

  src = fetchFromGitHub {
    owner = "matrix-org";
    repo = "matrix-appservice-irc";
    rev = "${version}";
    sha256 = "137qmi0xbhxwli969aj5lf71i7myiwipv7rcb6rsfnqcapnc1q0w";
  };

  buildInputs = [ nodejs git python icu ];

  buildPhase = ''
    export HOME=$TEMP
    npm install
  '';

  installPhase = ''
    mkdir -p "$out/lib"
    mv "$PWD" "$out/lib/matrix-appservice-irc"
    mkdir -p "$out/bin"
    ln -s "$out/lib/matrix-appservice-irc/bin/matrix-appservice-irc" "$out/bin/"
  '';
}
