function get-active-audio-port
	set card (pactl list sinks short|g analog-stereo |choose 0)
	pactl list sinks|g $card -A25|g "Active Port"| choose 2
end
