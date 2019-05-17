# Defined in /home/michael/.config/fish/buffer/emc.fish @ line 2
function emc
	if not pgrep emacs
        emd &
    end
	  emacsclient -c $argv &
end
