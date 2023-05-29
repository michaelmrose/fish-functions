function get-active-audio-port
	pactl list sinks|g "active port.*analog-output"
end
