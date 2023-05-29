function toggle-headphones
	set -U SOUND_CARD (pactl list sinks short|g (cat ~/.config/sound-settings/card_name)|choose 0) 
	if [  $SOUND_PORT = headphones  ]
		pactl set-sink-port $SOUND_CARD analog-output-lineout
		set -U SOUND_PORT speakers
	else
		pactl set-sink-port $SOUND_CARD analog-output-headphones
		set -U SOUND_PORT headphones
	end
end
