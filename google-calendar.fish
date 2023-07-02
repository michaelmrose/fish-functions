function google-calendar
	firefox ---kiosk --new-window calendar.google.com &	
	waituntilfocused Firefox
	sleep 0.5
	xdotool key F1
	i3 fullscreen disable
end
