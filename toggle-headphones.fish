function toggle-headphones
	if [  $SOUND_PORT = headphones  ]
		pactl set-sink-port $SOUND_CARD analog-output-headphones
		set -U SOUND_PORT headphones
	else
		pactl set-sink-port $SOUND_CARD analog-output-lineout
		set -U SOUND_PORT speakers
	end
end
