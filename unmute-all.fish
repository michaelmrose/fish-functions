# Defined in /home/michael/.config/fish/buffer/mute-all_mute-rest_unmute-all.fish @ line 22
function unmute-all
	set sinks (pactl list short sinks | awk '{print $1}')
    for s in $sinks
        pactl set-sink-mute $s 0
    end
end
