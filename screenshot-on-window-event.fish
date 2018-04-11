# Defined in /home/michael/.config/fish/buffer/cull-screenshots_screenshot-on.fish @ line 14
function screenshot-on-window-event
	i3subscribe window|grep -E --line-buffered 'close|new'| screenshot-workspace
    cull-screenshots
end
