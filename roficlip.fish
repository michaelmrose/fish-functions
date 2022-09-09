function roficlip
	# rofi -m -1 -modi "clipboard:greenclip print" -show clipboard -run-command '{cmd}'
	xtodotool type (greenclip print|select)
end
