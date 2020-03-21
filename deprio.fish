# Defined in /home/michael/.config/fish/buffer/deprio_nicer_nicer-desktop.fish @ line 2
function deprio
    for p in (pgrep $argv)
        s ionice -c 3 -p $p
    end
end
