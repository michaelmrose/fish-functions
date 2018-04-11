# Defined in /home/michael/.config/fish/buffer/screenshot-workspace.fish @ line 2
function screenshot-workspace
	while read -l line
        screenshot display /home/michael/.config/i3/screenshots/(get-focused-workspace).jpg
    end
end
