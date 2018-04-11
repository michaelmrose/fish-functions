# Defined in /home/michael/.config/fish/buffer/cull-screenshots_screenshot-on.fish @ line 20
function screenshot-workspace
	while read -l line
        screenshot display /home/michael/.config/i3/screenshots/(get-focused-workspace).jpg
        cull-screenshots
    end
end
