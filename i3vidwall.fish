function i3vidwall
	for cord in (xrandr -q | grep 'connected' | grep -oP '\d+x\d+\+\d+\+\d+')
		xwinwrap -ov -ni -g $cord -- mpv --fs --loop-file --no-audio --no-correct-pts --no-osc --no-osd-bar -wid WID --no-input-default-bindings "$argv" &
	end
end
