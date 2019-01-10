# Defined in /home/michael/.config/fish/buffer/get-display-position_get-focus.fish @ line 7
function get-focused-display
	get-ws-info get output where focused = true
end
