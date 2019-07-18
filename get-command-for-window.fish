# Defined in /home/michael/.config/fish/buffer/get-command-for-window_place_s.fish @ line 2
function get-command-for-window
	if exists $argv
	      set wid $argv[1]
    else
        set wid (ensure-hex (xdotool getactivewindow))
    end
    set pid (wmctrl -lp|grep $wid|awk '{print $3}')
    set com (cat /proc/$pid/comm )
    echo $com
end
