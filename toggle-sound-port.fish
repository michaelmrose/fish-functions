# Defined in /usr/home/michael/.config/fish/buffer/toggle-sound-port.fish @ line 2
function toggle-sound-port
		set active (pactl list sinks|grep "Active Port"|choose 2)
		switch $active
				case analog-output-headphones
						# disable automute so the fucking sound can come out of line out
						amixer -c 1 sset "Auto-Mute Mode" Disabled
						# switch to line out
						pactl set-sink-port 1 analog-output-lineout
				case analog-output-lineout
						# enable automute so that sound doesn't come out of both
						amixer -c 1 sset "Auto-Mute Mode" Enabled
						# switch to headphones
						pactl set-sink-port 1 analog-output-headphones
		end
end
