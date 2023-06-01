function get-active-audio-port
	pactl list sinks|g "active port: analog-output-.*"|choose 2
end
