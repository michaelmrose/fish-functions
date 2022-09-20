function monitors
	switch $argv
        case one
			xrandr --output DP-0 --off
			xrandr --output DVI-D-0 --off
        case all
			xrandr --output DP-0 --auto
			xrandr --output DVI-D-0 --auto
			xrandr --dpi 163 --output DP-0 --auto --scale 1.75x1.75 --output HDMI-0 --pos 3360x0 --mode 3840x2160 --output DVI-D-0 --pos 7200x0 --scale 1.75x1.75
    end
end
