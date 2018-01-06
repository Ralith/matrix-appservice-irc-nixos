Add this repository to the `imports` list in your configuration.nix, then configure `services.matrix-appservice-irc` as
you would any other NixOS service. If you use git to version-control your configuration.nix, adding this repository as a
submodule works well.

To update to a new version, bump the version in 'node/node-packages.json' and run 'generate.sh' in the node directory,
and then bump the version in 'package.nix' (in the attribute name).

Thanks to Robin Lambertz for authoring the original module this was derived from.
