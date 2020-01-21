# Defined in /home/michael/.config/fish/buffer/dolphin-toggle.fish @ line 2
function dolphin-toggle
	if string match (winclass) kitty
        i3 move window to scratchpad
  else
        i3 '[ class = ^kitty ] scratchpad show;floating disable' 
    end
end
