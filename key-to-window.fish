function key-to-window
	xdotool key $argv[1] --window (wid $argv[2])
end
