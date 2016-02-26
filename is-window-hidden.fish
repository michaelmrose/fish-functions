function is-window-hidden
	xwininfo -id $argv -all | grep "Window state:" > /dev/null
end
