# Defined in /home/michael/.config/fish/buffer/place_start.fish @ line 2
function place
	echo starting
	  set wid (dectohex (xdotool getactivewindow))
    set command (get-command-for-window $wid)
    set target (cat /tmp/fuckingstart/$command)
	  msg in place fn wid is $wid command is $command and target is $target
	  echo in place fn wid is $wid command is $command and target is $target
    if exists $target
        i3 move window to workspace $target
        rm /tmp/fuckingstart/$command
        msg removing target
    else
        msg target is empty
        return 0
    end
end
