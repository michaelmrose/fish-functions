# Defined in /home/michael/.config/fish/buffer/hexcolor-to-hexchatcolor_proce.fish @ line 9
function process-colors-to-hexchat
    set colors (cat ~/.cache/wal/colors)
    set numbers (seq 1 (count $colors))
    for c in $colors
        set acc $acc 
    end
    echo numbers
end
