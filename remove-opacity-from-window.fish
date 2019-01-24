# Defined in /home/michael/.config/fish/buffer/remove-opacity-from-window.fish @ line 1
function remove-opacity-from-window
	xprop -id $argv -remove _NET_WM_WINDOW_OPACITY
end
