# Defined in /usr/home/michael/.config/fish/buffer/toggle-alsa.fish @ line 1
function toggle-alsa
		switch (amixer get Master | egrep 'Playback.*?\[o' | egrep -o '\[o.+\]')
				case '[on]'
						echo on
				case '[off]'
						echo off
		end
end
