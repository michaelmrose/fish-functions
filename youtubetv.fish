function youtubetv
	# chrome --app-id=nlmaamaoahjiilibgbafebhafkeccjac
	firefox --kiosk --new-window 'ext+container:name=work&url=tv.youtube.com'
	waituntilfocused Firefox
	sleep 0.5
	xdotool key F1
end
