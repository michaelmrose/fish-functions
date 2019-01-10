# Defined in /home/michael/.config/fish/buffer/calculate-available-space_get-.fish @ line 7
function get-focused-display-position
	get-display-position (get-focused-display)|condense_lines
end
