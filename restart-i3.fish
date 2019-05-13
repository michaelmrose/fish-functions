# Defined in /home/michael/.config/fish/buffer/restart-i3.fish @ line 2
function restart-i3
	set wid (xdotool getactivewindow)
	  i3 restart
	  killall compton
    sleep 0.25
    compton &
    sleep 0.5
    wmctrl -l|awk '{print $1}'|each remove-opacity-from-window
    eval "i3 [id=$wid] focus" 
end
