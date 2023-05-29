function volume-status-line
	switch $SOUND_PORT
		case headphones
			set icon 
		case speakers
			set icon  🔘  
	end
	i3status-rs-colorize Warning $icon (ponymix get-volume)%
end
