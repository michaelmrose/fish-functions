# Defined in /home/michael/.config/fish/buffer/cull-screenshots_screenshot-on.fish @ line 18
function screenshot-workspace
	while read -l line
        screenshot display ~/.config/i3/screenshots/(get-focused-workspace).jpg
        cull-screenshots
    end
end
