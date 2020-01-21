# Defined in /home/michael/.config/fish/buffer/smart-quit.fish @ line 1
function smart-quit
	if string match (winclass) dolphin
        dolphin-toggle
    else
        i3-msg kill
    end
end
