# Defined in /usr/home/michael/.config/fish/buffer/walfn.fish @ line 2
function walfn

if test (count $bgimage) -gt 1
    montage $bgimage[1] $bgimage[2] -geometry +0+0 /tmp/montage.jpg
    set target /tmp/montage.jpg
else
    set target $bgimage
end

wal -n --saturate 0.7 -i $target

if exists $argv
    set accent $argv[1]
    set fg $argv[2]
    set bg $argv[3]
else
    set accent (jq -r .colors.color3 ~/.cache/wal/colors.json)
    set fg (jq -r .colors.color0 ~/.cache/wal/colors.json)
    set bg (jq -r .colors.color15 ~/.cache/wal/colors.json)
end
# replace i3status-rs accent color
sd '^warning_bg =.*' warning_bg=\"$accent\" ~/.config/i3status-rust/config.toml
replace-color-in-i3 $accent
inject-rounded
replace-color-in-i3 $accent
colorize-emacs $accent $fg $bg
restart-i3
sleep 1
pywalfox update
pywalzathura
end
