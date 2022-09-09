function roficlip
	# rofi -m -1 -modi "clipboard:greenclip print" -show clipboard -run-command '{cmd}'
	greenclip print|select|each xdotool type
end
