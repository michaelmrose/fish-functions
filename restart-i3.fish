# Defined in /home/michael/.config/fish/buffer/restart-i3.fish @ line 1
function restart-i3
	killall compton
    i3 restart
    compton &
    i3 restart
    wmctrl -l|awk '{print $1}'|each remove-opacity-from-window
end
