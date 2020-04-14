# Defined in /home/michael/.config/fish/buffer/emc.fish @ line 2
function emc
    if not emacsclient -c $argv
        emd
        emacsclient -c $argv
    end
end
