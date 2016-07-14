function switch-audio
	# set sinks   (ponymix -t sink list --short | awk '{print $2}')
  set sinks   (pactl list short sinks | cut -f1)
  set current (ponymix -t sink defaults --short | head -1 | awk '{print $2}')
  # set current (pactl list sinks short | grep RUNNING cut -f1)
  # set streams (ponymix -t sink-input list --short | awk '{print $2}')
  set streams (pactl list short sink-inputs | cut -f1)
  set next    (next-valid-index $current $sinks)
  if exists $streams
    # apply-to "pacmd move-sink-input \$i $next" $streams
    for stream in $streams
      # pacmd move-sink-input $stream $next
      pactl move-sink-input $stream $next
    end
  end
  # pacmd set-default-sink $next
  pactl set-default-sink $next
  signal-i3blocks output
end
