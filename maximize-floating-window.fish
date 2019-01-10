# Defined in /home/michael/.config/fish/buffer/calculate-available-space_get-.fish @ line 22
function maximize-floating-window
	i3 move absolute position (get-focused-display-position)
    i3 resize set (calculate-available-space)
end
