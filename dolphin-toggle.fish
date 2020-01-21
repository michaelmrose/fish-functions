# Defined in /home/michael/.config/fish/buffer/dolphin-toggle.fish @ line 2
function dolphin-toggle
	if pgrep dolphin
        if string match (winclass) dolphin
            i3-msg move window to scratchpad
        else
            i3-msg '[ class = ^dolphin ] scratchpad show;floating disable' 
        end
    else
        dolphin &
    end
end
