# Defined in /home/michael/.config/fish/buffer/walfn.fish @ line 2
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
    wal -n --saturate 1.0 -i $target
    inject-rounded
    set accent (jq -r .colors.color2 ~/.cache/wal/colors.json)
    replace-color-in-i3 $accent
    colorize-emacs $accent $fg $bg
    restart-i3
end
