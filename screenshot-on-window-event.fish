# Defined in /home/michael/.config/fish/buffer/cull-screenshots_screenshot-on.fish @ line 14
function screenshot-on-window-event
	i3subscribe window|grep -E --line-buffered 'close|new'| screenshot display ~/.config/i3/screenshots/(get-focused-workspace).jpg;and cull-screenshots
end
