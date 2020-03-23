# Defined in /home/michael/.config/fish/buffer/fw.fish @ line 1
function fw
    set words $argv
    while read -l line
        echo $line
    end
end
