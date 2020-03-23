# Defined in /home/michael/.config/fish/buffer/fw.fish @ line 2
function fw
    set words $argv
    while read -l line
        set acc $line
        for word in $words
            set acc (echo $acc | g $word)
        end
        if exists $acc
            echo $acc
        else
            return 1
        end
    end
end
