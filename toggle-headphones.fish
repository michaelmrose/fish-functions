function toggle-headphones
	set port (get-active-audio-port)
	set card (pactl list sinks short|g analog-stereo |choose 0)  
	if [  $port = analog-output-headphones  ]
		pactl set-sink-port $card analog-output-lineout
	else
		pactl set-sink-port $card analog-output-headphones
	end
end
