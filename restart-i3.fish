# Defined in /home/michael/.config/fish/buffer/restart-i3.fish @ line 2
function restart-i3
	killall compton
    i3 restart
    compton &
    sleep 0.5
    wmctrl -l|awk '{print $1}'|each remove-opacity-from-window
end
