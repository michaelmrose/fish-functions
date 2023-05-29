function toggle-headphones
	
	amixer set -c 1 Front mute
	amixer set -c 1 Headphone unmute
	
	amixer set -c 1 Front unmute
	amixer set -c 1 Headphone mute

end
