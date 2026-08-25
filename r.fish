function r
    set -l marker $PWD
    while not test -d .git
        cd ..
    end
    if exists $argv
        $argv
        cd "$marker"
    end
end
