# Defined in /home/michael/.config/fish/buffer/str.fish @ line 1
function str
    switch $argv[1]
        case '['
            echo sqr
        case \'
            echo sq
        case \"
            echo dq
        case '*'
            echo default
    end
end
