function cj
    set -l marker $PWD
    while not test -f deps.edn
        cd ..
    end
    clj $argv
    cd "$marker"
end
