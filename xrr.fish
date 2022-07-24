function xrr
	switch $argv
		case left
			xrandr --dpi 163 --output DP-0 --scale 1.75x1.75 - -output HDMI-0 --off --output DVI-D-0 --off
		case all
			xrandr --dpi 163 --output DP-0 --scale 1.75x1.75 - -output HDMI-0 --pos 3360x0 --mode 3840x2160 --output DV I-D-0 --pos 7200x0 --scale 1.75x1.75
		case '*'
			if test (count (get-connected-displays)) -eq 3
				xrr left
			else
				xrr all
			end
	end
	wp recall
	restart picom
end
