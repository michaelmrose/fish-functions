function center-window
	set width (get-focused-display-width)
    set height (get-focused-display-height)
    set winwidth (get-window-width)
    set winheight (get-window-height)
    set xcord (math (math "$width / 2") - (math "$winwidth / 2"))
    set ycord (math (math "$height / 2") - (math "$winheight / 2"))
    xdotool getactivewindow windowmove $xcord $ycord
end
