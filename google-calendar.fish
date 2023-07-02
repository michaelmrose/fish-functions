function google-calendar
	firefox ---kiosk --new-window calendar.google.comr
	waituntilfocused Firefox
	xdotool key F1
	i3 fullscreen disable
end
