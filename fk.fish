# Defined in /usr/home/michael/.config/fish/buffer/fk.fish @ line 2
function fk
    echo fuck $argv
    pgrep $argv|each kill -9
end
