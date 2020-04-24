# Defined in /home/michael/.config/fish/buffer/albumart.fish @ line 1
function albumart
    set localart (localalbumart)
    if not exists $localart
        albumart.sh
    end
end
