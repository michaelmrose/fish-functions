# Defined in /home/michael/.config/fish/buffer/inject-rounded.fish @ line 1
function inject-rounded
    set txt 'window {
    border-radius: 9px;
    padding:          5;
    background-color: @background;
    border:           1;
    }'

    p $txt
end
