function google-calendar
	firefox ---kiosk --new-window calendar.google.com &
	waituntilfocused Firefox
	xdotool key F1
	i3 fullscreen disable
end
