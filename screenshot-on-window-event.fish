# Defined in /home/michael/.config/fish/buffer/screenshot-on-window-event.fish @ line 1
function screenshot-on-window-event
	i3subscribe window|grep -E --line-buffered 'close|new'|screenshot-workspace
end
