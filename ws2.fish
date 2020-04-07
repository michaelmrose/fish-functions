# Defined in /home/michael/.config/fish/buffer/ws2.fish @ line 2
function ws2
    switch $argv
        case a
            set target 1
        case b
            set target 2
    end

    echo $target: $argv
end
