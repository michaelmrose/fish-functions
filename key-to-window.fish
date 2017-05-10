function key-to-window
	xodotool key $argv[1] --window (wid $argv[2])
end
