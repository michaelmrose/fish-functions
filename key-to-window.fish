function key-to-window
	xdotool key --window (wid $argv[2]) $argv[1]
end
