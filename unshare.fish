function unshare
    sudo zfs set sharenfs="off" $argv
end
