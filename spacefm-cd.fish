function spacefm-cd
	xdotool key Control+l
    xdotool type --delay 1 $argv
    xdotool key Return
end
