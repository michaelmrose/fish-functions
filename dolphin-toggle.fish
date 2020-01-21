# Defined in /home/michael/.config/fish/functions/dolphin-toggle.fish @ line 2
function dolphin-toggle
	if pgrep dolphin
        if string match (winclass) dolphin
            i3 move window to scratchpad
        else
            i3 '[ class = ^dolphin ] scratchpad show;floating disable' 
        end
    else
        dolphin &
    end
end
