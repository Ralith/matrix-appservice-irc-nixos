{ nixpkgs ? <nixpkgs>, system ? builtins.currentSystem }:

with (import nixpkgs { inherit system; });

(import ((fetchFromGitHub {
  owner = "svanderburg";
  repo = "node2nix";
  rev = "add2ea4c69851507b3ae74d7832dea07f5af625e";
  sha256 = "13sbggxvprhhkil749p4wdbmvwq868hf1707yda6zgkv5x4yxm5p";
})) {}).package
