# Defined in /home/michael/.config/fish/buffer/get-display-position.fish @ line 2
function get-display-position
	i3-msg -t get_outputs|jq -r ".[] | select(.name == \"$argv\") | {x: .rect.x, y: .rect.y}|.[]"
end
