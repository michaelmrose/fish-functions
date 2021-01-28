# Defined in /usr/home/michael/.config/fish/buffer/toggle-alsa.fish @ line 2
function toggle-alsa
		switch (amixer -c 1 get Headphone | egrep 'Playback.*?\[o' | egrep -o '\[o.+\]|' |sort -u)
				case '[on]'
						echo on
				case '[off]'
						echo off
		end
end
