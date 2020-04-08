# Defined in /home/michael/.config/fish/buffer/replace-color-in-i3_walfn.fish @ line 7
function walfn
    set accent (jq -r .colors.color2 ~/.cache/wal/colors.json)
    set fg (jq -r .colors.color0 ~/.cache/wal/colors.json)
    set bg (jq -r .colors.color15 ~/.cache/wal/colors.json)
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
