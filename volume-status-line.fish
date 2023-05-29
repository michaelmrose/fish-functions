function volume-status-line
	switch $SOUND_PORT
		case headphones
			echo 🎧 (ponymix get-volume) %
		case speakers
			echo 🔘  (ponymix get-volume) %
	end
end
