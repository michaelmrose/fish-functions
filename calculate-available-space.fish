# Defined in /home/michael/.config/fish/buffer/calculate-available-space.fish @ line 1
function calculate-available-space
	i3-msg -t get_workspaces|jq -r ".[] | select(.focused == true)|{w: .rect.width, h: .rect.height}| .[]"
end
