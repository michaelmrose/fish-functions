# Defined in /home/michael/.config/fish/buffer/walfn.fish @ line 2
function walfn
    if test (count $bgimage) -gt 1
        montage $bgimage[1] $bgimage[2] -geometry +0+0 /tmp/montage.jpg
        set target /tmp/montage.jpg
    else
        set target $bgimage
    end
    wal -n --saturate 1.0 -i $target
end
