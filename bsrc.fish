function bsrc
    set dir $PWD
    set app $argv[1]
    cd /tank/project_archive/void-packages/
    git pull
    set subdir (bat srcpkgs/{$app}/template|g repo|choose -f = 1)
    ./xbps-src pkg $app
    sudo xbps-install -R hostdir/binpkgs/$subdir $app -y
    set res $status
    cd $dir
    return $res
end
