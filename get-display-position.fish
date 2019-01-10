function get-display-position
	i3-msg -t get_outputs|jq -r '.[] | select(.name == "DP1") | {x: .rect.x, y: .rect.y}|.[]'
end
