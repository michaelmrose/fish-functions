function switch-audio
	set sinks   (pactl list short sinks | cut -f1)
  set current (pactl list short sinks | grep RUNNING | cut -f1)
  set streams (pactl list short sink-inputs | cut -f1)
  set next    (next-valid-index $current $sinks)
  if exists $streams
    for stream in $streams
      pactl move-sink-input $stream $next
    end
  end
  pactl set-default-sink $next
  signal-i3blocks output
end
