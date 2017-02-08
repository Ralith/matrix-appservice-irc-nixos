{ stdenv, fetchurl, fetchFromGitHub, nodejs, git, python, icu }:
stdenv.mkDerivation rec {
  name = "matrix-appservice-irc-${version}";
  version = "0.7.1";

  src = fetchFromGitHub {
    owner = "matrix-org";
    repo = "matrix-appservice-irc";
    rev = "${version}";
    sha256 = "0ww5ss0782ha0ry7l1h5sq1d2i3cldgqxmly6iyzd584gl3mjjv0";
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
