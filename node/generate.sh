#!/bin/sh -e

rm -f default.nix node-packages.nix node-env.nix
"$(nix-build ./node2nix.nix --no-out-link)/bin/node2nix" \
  --production \
  --nodejs-6 \
  --input node-packages.json \
  --composition default.nix \
  --node-env node-env.nix
