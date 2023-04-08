function other-windows
	xdotool search --all --onlyvisible --desktop $(xprop -notype -root _NET_CURRENT_DESKTOP | choose 2) "" 2>/dev/null|exclude (xdotool getactivewindow)
end
