export NIXPKGS=$HOME/Repositories/nixpkgs
git --git-dir=$NIXPKGS/.git  bisect good 4fdea7312e8cfe13306cd8d70ee6b060dae956e3
git --git-dir=$NIXPKGS/.git bisect bad master
git --git-dir=$NIXPKGS/.git bisect run ./test.sh
