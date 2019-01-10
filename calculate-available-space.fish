# Defined in /home/michael/.config/fish/buffer/calculate-available-space_get-.fish @ line 2
function calculate-available-space
	i3-msg -t get_workspaces|jq -r ".[] | select(.focused == true)|{w: .rect.width, h: .rect.height}| .[]" |tr '\n' ' '
end
