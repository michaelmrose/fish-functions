function unshare
    sudo zfs set sharenfs="none" $argv
end
