# Defined in /home/michael/.config/fish/buffer/maximize-floating-window.fish @ line 2
function maximize-floating-window
	i3 move absolute position (get-focused-display-position)
    i3 resize set (calculate-available-space)
end
