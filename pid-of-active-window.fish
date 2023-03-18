function pid-of-active-window
	wmctrl -lxp|grep (ensure-hex (xdotool getactivewindow))|choose 2
end
