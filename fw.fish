# Defined in /home/michael/.config/fish/buffer/fw.fish @ line 2
function fw
    set words $argv
    while read -l line
        set acc $line
        for word in $words
            echo $word
        end
    end
end
