# Defined in /home/michael/.config/fish/buffer/get-focused-display-position.fish @ line 1
function get-focused-display-position
	i3-msg -t get_outputs|jq -r '.[] | select(.name == "DP1") | {x: .rect.x, y: .rect.y}|.[]'
end
