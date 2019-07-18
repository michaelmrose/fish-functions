# Defined in /home/michael/.config/fish/buffer/get-command-for-window_place_s.fish @ line 19
function place
	set wid (dectohex (xdotool getactivewindow))
    set command (get-command-for-window $wid)
    set target (cat /tmp/fuckingstart/$command)
	  msg in place fn wid is $wid command is $command and target is $target
    if exists $target
        i3 move window to workspace $target
        rm /tmp/fuckingstart/$command
    end
end
