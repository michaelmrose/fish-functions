# Defined in /home/michael/.config/fish/buffer/place_start.fish @ line 16
function get-command-for-window
	set wid $argv[1]
    set pid (wmctrl -lp|grep $wid|awk '{print $3}')
    set com (cat /proc/$pid/comm )
    echo $com
end
