# Defined in /home/michael/.config/fish/buffer/get-wal-rgb-colors_process-col.fish @ line 2
function get-wal-rgb-colors
    cat ~/.cache/wal/colors-konsole.colorscheme|g color|cut -d = -f2-|g '^[0-9]'|sd , " "
end
