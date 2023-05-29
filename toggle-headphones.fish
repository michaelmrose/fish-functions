function toggle-headphones
	if [  $SOUND_PORT == headphones]
		pactl set-sink-port $SOUND_CARD analog-output-headphones
	else
		pactl set-sink-port $SOUND_CARD analog-output-lineout
	end
end
