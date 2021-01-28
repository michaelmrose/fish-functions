# Defined in /usr/home/michael/.config/fish/buffer/toggle-alsa.fish @ line 2
function toggle-alsa
		switch (amixer -c 1 get Headphone | egrep 'Playback.*?\[o' | egrep -o '\[o.+\]|' |sort -u)
				case '[on]'
						amixer set -c 1 Headphone mute
						amixer set -c 1 Front unmute
				case '[off]'
						amixer set -c 1 Headphone unmute
						amixer set -c 1 Front mute
		end
end
