cp default.nix.bak $NIXPKGS/pkgs/development/tools/build-managers/bazel/default.nix
cp ./src-deps.json $NIXPKGS/pkgs/development/tools/build-managers/bazel/src-deps.json
nix-build $NIXPKGS -A bazel
git --git-dir=$NIXPKGS/.git reset --hard 
status=$?
exit $status
