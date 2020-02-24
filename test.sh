cp default.nix $NIXPKGS/pkgs/development/tools/build-managers/bazel/default.nix
cp ./src-deps.json $NIXPKGS/pkgs/development/tools/build-managers/bazel/src-deps.json
mkdir tmp && cd tmp
nix-build -I $NIXPKGS -A pkgs.bazel
cd .. && rm -rf tmp
git --git-dir=$NIXPKGS/.git reset --hard 
status=$?
exit $status
