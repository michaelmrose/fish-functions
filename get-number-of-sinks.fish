function get-number-of-sinks
	pacmd list-sinks | grep -c index:[[:space:]][[:digit:]]
end
