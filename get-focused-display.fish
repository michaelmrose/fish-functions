# Defined in /home/michael/.config/fish/buffer/calculate-available-space_get-.fish @ line 12
function get-focused-display
	i3-msg -t get_workspaces|jq .[]|jq -r "select(.focused == true).output"
end
