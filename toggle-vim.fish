function toggle-vim
	if in-vim
        xdotool key Escape
        xdotool type --delay 0.1 :w
        xdotool key Return
        xdotool key Control+z
        xdotool key Return
        xdotool key Control+r
    else
        xdotool key Control+x
    end
end
