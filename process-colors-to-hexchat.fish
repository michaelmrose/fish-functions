# Defined in /home/michael/.config/fish/buffer/hexcolor-to-hexchatcolor_proce.fish @ line 10
function process-colors-to-hexchat
    set colors (cat ~/.cache/wal/colors)
    set numbers (seq 1 (count $colors))
    set ndx 1
    for c in $colors
        set acc $acc colors_$ndx = (hexcolor-to-hexchatcolor $c)
    end
    p $acc
end
