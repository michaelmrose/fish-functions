function src
    set dir $PWD
    set app $arg[1]
    cd ~/extproj/void-packages/
    set subdir (bat srcpkgs/$app/template|g repo|choose -f = 1)
    ./xbps-src pkg $app
    sudo xbps-install -R hostdir/binpkgs/$subdir $app
    set res $status
    cd $dir
    return $res
end
