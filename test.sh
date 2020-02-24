cp default.nix $NIXPKGS/pkgs/development/tools/build-managers/bazel/default.nix
cp ./src-deps.json $NIXPKGS/pkgs/development/tools/build-managers/bazel/src-deps.json
nix-build -I $NIXPKGS -A pkgs.bazel
git reset --hard --git-dir=$NIXPKGS/.git
status=$?
exit $status
