{ stdenv, system, fetchurl, fetchgit, nodejs, python2, utillinux, runCommand,
  writeTextFile }:

(import ./node {
  pkgs = {
    inherit stdenv python2 utillinux runCommand writeTextFile fetchurl fetchgit;
  };
  inherit system nodejs;
})."matrix-appservice-irc-0.8.0"
