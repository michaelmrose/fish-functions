# Defined in /home/michael/.config/fish/buffer/restart-i3.fish @ line 2
function restart-i3
	i3 restart
	  killall compton
    compton &
    sleep 0.1
    wmctrl -l|awk '{print $1}'|each remove-opacity-from-window
end
