# Defined in /home/michael/.config/fish/buffer/deprio.fish @ line 1
function deprio
    for p in (pgrep $argv)
        s ionice -c 3 -p $p
    end
end
