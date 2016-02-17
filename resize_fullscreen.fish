function resize_fullscreen
	set xoffset (math (get-focused-display-offset) + 50)
    set xsize (math (get-focused-display-width)- 100)
    set ysize (math (get-focused-display-height)- 100)
    xdotool getactivewindow windowmove $xoffset 50
    xdotool getactivewindow windowsize $xsize $ysize
end
