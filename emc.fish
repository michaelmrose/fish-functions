# Defined in /home/michael/.config/fish/buffer/emc.fish @ line 2
function emc
    if not emacsclient -c $argv
        msg daemon not running... starting now
        emd
        emacsclient -c $argv
    end
end
