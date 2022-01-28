function restart-i3
	set wid (xdotool getactivewindow)
	  i3 restart
    sleep 0.25
    wmctrl -l|awk '{print $1}'|each remove-opacity-from-window
    eval "i3 [id=$wid] focus" 
    sv restart picom
end
