function volume-status-line
	switch (get-active-audio-port)
		case analog-output-headphones
			set icon 
		case analog-output-lineout
			set icon 
	end
	i3status-rs-colorize Warning $icon (ponymix get-volume)%
end
