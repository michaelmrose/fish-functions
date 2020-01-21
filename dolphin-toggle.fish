# Defined in /home/michael/.config/fish/buffer/dolphin-toggle.fish @ line 1
function dolphin-toggle
	if string match (winclass) dolphin
        i3 move window to scratchpad
    else
        i3 '[ class = ^dolphin ] scratchpad show;floating disable' 
    end
end
