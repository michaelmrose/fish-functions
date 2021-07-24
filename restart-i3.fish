# Defined in /usr/home/michael/.config/fish/buffer/restart-i3.fish @ line 2
function restart-i3
	set wid (xdotool getactivewindow)
	  i3 restart
    sleep 0.25
    wmctrl -l|awk '{print $1}'|each remove-opacity-from-window
    eval "i3 [id=$wid] focus" 
	killall picom
	sleep 1
	picom &
end
