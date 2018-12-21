# Defined in /home/michael/.config/fish/buffer/mute-rest.fish @ line 2
function mute-rest
	set current (ponymix -t sink defaults --short | awk '{print $2}'|head -1)
    set sinks (pactl list short sinks | awk '{print $1}')
    for s in $sinks
        if test $s -ne $current
            pactl set-sink-mute $s 1
        end
    end
end
