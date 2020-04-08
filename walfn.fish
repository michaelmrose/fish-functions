# Defined in /home/michael/.config/fish/buffer/walfn.fish @ line 2
function walfn
    set accent (jq -r .colors.color2 ~/.cache/wal/colors.json)
    replace-color-in-i3 $accent
    if test (count $bgimage) -gt 1
        montage $bgimage[1] $bgimage[2] -geometry +0+0 /tmp/montage.jpg
        set target /tmp/montage.jpg
    else
        set target $bgimage
    end
    wal -n --saturate 0.7 -i $target
    inject-rounded
    set accent (jq -r .colors.color2 ~/.cache/wal/colors.json)
    replace-color-in-i3 $accent
    restart-i3
end
