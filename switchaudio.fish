# Defined in /home/michael/.config/fish/buffer/switchaudio.fish @ line 2
function switchaudio
	set sinks (pactl list short sinks | awk '{print $1}')
    set streams (pactl list short sink-inputs | cut -f1)
    set current (ponymix -t sink defaults --short | awk '{print $2}'|head -1)

    switch $argv[1]
        case set
            set next (ponymix -t sink list --short | grep -i $argv[2]| head -1 |awk '{print $2}')
        case toggle
            set first (ponymix -t sink list --short | grep -i $argv[2]| head -1 |awk '{print $2}')
            set second (ponymix -t sink list --short | grep -i $argv[3]| head -1 |awk '{print $2}')
            if [ $current = $first ]
                set next $second
            else
                set next $first
            end
        case next
            set next (next-valid-index $current $sinks)

    end

    if not test $next
        echo 'invalid argument please enter next, set [name], or toggle [name] [name] wherein name is a valid substring in the sink description'
        echo 'Sinks:'
        ponymix -t sink list --short
        return 1
    end

    for s in $streams
        pactl move-sink-input $s $next
    end
    pactl set-default-sink $next
    ponymix unmute
    signal-i3blocks output
end
