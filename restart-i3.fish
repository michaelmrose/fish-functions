# Defined in /home/michael/.config/fish/buffer/restart-i3.fish @ line 2
function restart-i3
	i3 restart
	  killall compton
    sleep 0.25
    compton &
    sleep 0.5
    wmctrl -l|awk '{print $1}'|each remove-opacity-from-window
end
