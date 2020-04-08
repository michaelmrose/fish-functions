# Defined in /home/michael/.config/fish/buffer/inject-rounded.fish @ line 2
function inject-rounded
    set txt 'window {
    border-radius: 9px;
    padding:          5;
    background-color: @background;
    border:           1;
    }'

    set wal ~/.cache/wal/colors-rofi-dark.rasi
    p $txt >> $wal
end
