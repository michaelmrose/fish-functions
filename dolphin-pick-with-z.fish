function dolphin-pick-with-z
	set pid (xprop -id (xdotool getwindowfocus) | grep '_NET_WM_PID' | grep -oE '[[:digit:]]*$')
	kitty -1 -e ff zquery $pid
end
