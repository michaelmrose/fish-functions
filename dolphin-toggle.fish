# Defined in /home/michael/.config/fish/buffer/dolphin-toggle.fish @ line 2
function dolphin-toggle
	if pgrep dolphin
        if string match (winclass) dolphin
            i3-msg move window to scratchpad
        else
            if noti3-msg '[ class = ^dolphin ] scratchpad show;floating disable' 
                dolphin &
            end
        end
    else
        dolphin &
    end
end
