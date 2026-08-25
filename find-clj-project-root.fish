function find-clj-project-root
    set target "$PWD"
    while not test -f deps.edn
        cd ..
    end
    echo $PWD
    cd "$PWD"
end
