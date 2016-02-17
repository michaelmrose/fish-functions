function get-volumes
	pactl list sinks | sed -n -e '/State: RUNNING/,$p' | grep "Volume: 0" | cut -d ":" -f3 | cut -d "%" -f1 | trim
end
