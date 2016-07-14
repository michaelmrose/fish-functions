function switch-audio
	set sinks   (ponymix -t sink list --short | awk '{print $2}')
  set current (ponymix -t sink defaults --short | head -1 | awk '{print $2}')
  set streams (ponymix -t sink-input list --short | awk '{print $2}')
  set next    (next-valid-index $current $sinks)
  if exists $streams
    # apply-to "pacmd move-sink-input \$i $next" $streams
    for stream in $streams
      pac move-sink-input $stream $next
    end
  end
  pac set-default-sink $next
  signal-i3blocks output
end
