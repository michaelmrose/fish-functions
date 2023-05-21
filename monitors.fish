function monitors
	switch $argv
        case one
			xrandr --output DP-0 --off
			xrandr --output HDMI-0 --off
        case all
			xrandr --dpi 163 --output DP-0 --pos 0x0 --mode 3840x2160
			sleep 2
			xrandr --dpi 163 --output DP-2 --pos 3840x0 --mode 3840x2160
			sleep 2
			xrandr --dpi 163 --output HDMI-0 --pos 7680x0 --scale 1.75x1.75
		case '*'
			if test  (get-connected-displays|wc -l) -gt 1
				monitors one
			else
				monitors all
			end
	end
	wp recall
end
