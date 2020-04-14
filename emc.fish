# Defined in /home/michael/.config/fish/buffer/emc.fish @ line 2
function emc
    if not pgrep emacs > /dev/null
        emd
    end
    emacsclient -c --alternate-editor='' $argv &
end
