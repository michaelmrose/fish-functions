# Defined in /home/michael/.config/fish/buffer/screenshot-workspace.fish @ line 1
function screenshot-workspace
	while read -l line
        screenshot display /home/michael/.config/i3/screenshots/(get-focused-workspace)
    end
end
