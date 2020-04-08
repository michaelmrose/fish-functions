# Defined in /home/michael/.config/fish/buffer/inject-rounded_walfn.fish @ line 15
function walfn
    if test (count $bgimage) -gt 1
        montage $bgimage[1] $bgimage[2] -geometry +0+0 /tmp/montage.jpg
        set target /tmp/montage.jpg
    else
        set target $bgimage
    end
    wal -n --saturate 1.0 -i $target
    inject-rounded
end
