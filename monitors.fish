function monitors
	switch $argv
        case one
			ddcutil -d 3 setvcp 60 0x0f
			xrandr --output DP-0 --off
			xrandr --output DP-2 --off
        case all
			ddcutil -d 3 setvcp 60 0x0f
			xrandr --output DP-0 --auto
			xrandr --output DVI-D-0 --auto
			xrandr --dpi 163 --output DP-0 --auto --scale 1.75x1.75 --output HDMI-0 --pos 3360x0 --mode 3840x2160 --output DP-2 --pos 7200x0 --scale 1.75x1.75
		case work
			ddcutil -d 3 setvcp 60 0x11
			xrandr --dpi 163 --output DP-0 --auto --scale 1.75x1.75 --output HDMI-0  --off --output DP-2 --off
		case '*'
			if test  (get-connected-displays|wc -l) -gt 1
				ddcutil -d 3 setvcp 60 0x0f
				xrandr --output DP-0 --off
				xrandr --output DP-2 --off
			else
				ddcutil -d 3 setvcp 60 0x0f
				xrandr --output DP-0 --auto
				xrandr --output DVI-D-0 --auto
				xrandr --dpi 163 --output DP-0 --auto --scale 1.75x1.75 --output HDMI-0 --pos 3360x0 --mode 3840x2160 --output DP-2 --pos 7200x0 --scale 1.75x1.75
			end
	end
	wp recall
end
