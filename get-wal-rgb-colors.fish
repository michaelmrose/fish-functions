# Defined in /home/michael/.config/fish/buffer/get-wal-rgb-colors.fish @ line 1
function get-wal-rgb-colors
    cat colors-konsole.colorscheme|g color|cut -d = -f2-|g '^[0-9]'|sd , " "
end
