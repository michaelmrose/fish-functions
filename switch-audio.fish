function switch-audio
	set sinks   (ponymix -t sink list --short | awk '{print $2}')
  set current (ponymix -t sink defaults --short | head -1 | awk '{print $2}')
  set streams (ponymix -t sink-input list --short | awk '{print $2}')
  set next    (next-valid-index $current $sinks)
  apply-to "pacmd move-sink-input \$i $next" $streams
  pacmd set-default-sink $next
  signal-i3blocks output
end