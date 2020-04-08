# Defined in /home/michael/.config/fish/buffer/colorize-emacs_walfn.fish @ line 17
function walfn

wal -n --saturate 1.0 -i $target

if exists $argv
    set accent $argv[1]
    set fg $argv[2]
    set bg $argv[1]
else
    set accent (jq -r .colors.color2 ~/.cache/wal/colors.json)
    set fg (jq -r .colors.color0 ~/.cache/wal/colors.json)
    set bg (jq -r .colors.color15 ~/.cache/wal/colors.json)
end
replace-color-in-i3 $accent
if test (count $bgimage) -gt 1
    montage $bgimage[1] $bgimage[2] -geometry +0+0 /tmp/montage.jpg
    set target /tmp/montage.jpg
else
    set target $bgimage
end
inject-rounded
set accent (jq -r .colors.color2 ~/.cache/wal/colors.json)
replace-color-in-i3 $accent
colorize-emacs $accent $fg $bg
restart-i3
end
