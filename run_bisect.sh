git bisect good 4fdea7312e8cfe13306cd8d70ee6b060dae956e3
git bisect bad master
git bisect run ./test.sh
