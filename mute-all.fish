# Defined in /home/michael/.config/fish/buffer/mute-all_mute-rest_unmute-all.fish @ line 2
function mute-all
	set current (ponymix -t sink defaults --short | awk '{print $2}'|head -1)
    set sinks (pactl list short sinks | awk '{print $1}')
    for s in $sinks
            pactl set-sink-mute $s 1
    end
end
