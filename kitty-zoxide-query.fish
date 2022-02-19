function kitty-zoxide-query
	set pid (xprop -id (xdotool getwindowfocus) | grep '_NET_WM_PID' | grep -oE '[[:digit:]]*$')
	kitty -1 -e zoxide query -i| dolphin-open-path $pid

end
