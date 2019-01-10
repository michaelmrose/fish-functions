# Defined in /home/michael/.config/fish/buffer/calculate-available-space_get-.fish @ line 7
function get-display-position
	i3-msg -t get_outputs|jq -r ".[] | select(.name == \"$argv\") | {x: .rect.x, y: .rect.y}|.[]"
end
