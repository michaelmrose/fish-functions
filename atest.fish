# Defined in /usr/home/michael/.config/fish/buffer/m.fish @ line 31
function atest
    switch (count $argv)
        case 1
            echo 1
        case '*'
            echo many
    end
end
