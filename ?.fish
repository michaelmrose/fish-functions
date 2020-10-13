# Defined in /usr/home/michael/.config/fish/buffer/?.fish @ line 1
function ?
    if test -d ~/service/$argv
        sv status $argv
    else
        sudo sv status $argv
    end
end
