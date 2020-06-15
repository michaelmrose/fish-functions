# Defined in /home/michael/.config/fish/buffer/walfn.fish @ line 33
function walfn-selection

if test (count $argv) -gt 1
    montage $argv[1] $argv[2] -geometry +0+0 /tmp/montage.jpg
    set target /tmp/montage.jpg
else
    set target $argv
end

wal -n --saturate 0.7 -i $target

    set accent (jq -r .colors.color3 ~/.cache/wal/colors.json)
    set fg (jq -r .colors.color0 ~/.cache/wal/colors.json)
    set bg (jq -r .colors.color15 ~/.cache/wal/colors.json)

replace-color-in-i3 $accent
inject-rounded
replace-color-in-i3 $accent
colorize-emacs $accent $fg $bg
restart-i3
sleep 1
pywalfoxupdate
pywalzathura
end
