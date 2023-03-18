function monitors
	switch $argv
        case one
			ddcutil -d 3 setvcp 60 0x0f
			xrandr --output DP-0 --off
			xrandr --output DP-2 --off
        case all
			xrandr --dpi 163 --output DP-0 --pos 0x0 --mode 1920x1080 --scale 1.75x1.75
			sleep 1
			xrandr --dpi 163 --output HDMI-0 --pos 3360x0 --mode 3840x2160
			sleep 1
			xrandr --dpi 163 --output DP-2 --pos 7200x0 --scale 1.75x1.75
			sleep 1
			ddcutil -d 3 setvcp 60 0x0f
		case work
			ddcutil -d 3 setvcp 60 0x11
			xrandr --dpi 163 --output DP-0 --auto --scale 1.75x1.75 --output HDMI-0  --off --output DP-2 --off
		case '*'
			if test  (get-connected-displays|wc -l) -gt 1
				monitors one
			else
				monitors all
			end
	end
	wp recall
end
