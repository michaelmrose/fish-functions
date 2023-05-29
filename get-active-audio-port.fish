function get-active-audio-port
	pactl list sinks|g $SOUND_CARD -A30|g "Active Port"| choose 2
end
