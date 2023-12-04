function src
    set dir $PWD

    if test (count $argv) -eq 2
        set subdir $argv[1]
        set app $argv[2]
    else
        set app $argv[1]
    end

    cd ~/extproj/void-packages/
    ./xbps-src pkg $argv
    sudo xbps-install -R hostdir/binpkgs/$subdir $app
    set res $status
    cd $dir
    return $res
end
