# Defined in /home/michael/.config/fish/buffer/calculate-available-space_get-.fish @ line 17
function get-focused-display-position
	get-display-position (get-focused-display) |tr '\n' ' '
end
