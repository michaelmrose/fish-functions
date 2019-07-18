# Defined in /home/michael/.config/fish/buffer/place_start.fish @ line 2
function place
	set wid (dectohex (xdotool getactivewindow))
    set command (get-command-for-window $wid)
    set target (cat /tmp/fuckingstart/$command)
    i3 move window to $target
    rm /tmp/fuckingstart/$command
end
