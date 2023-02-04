function roficlip
	# rofi -m -1 -modi "clipboard:greenclip print" -show clipboard -run-command '{cmd}'
	# set text (greenclip print|select)
	# xdotool type --delay 1 "$text"
	# greenclip print|select|clipboard
	rofi -modi "clipboard:greenclip print" -show clipboard -run-command '{cmd}'

end
