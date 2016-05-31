function get-sinks
	pacmd list-sinks |sed 's/*//' |awk '/[*]|index:/{print $2}'
end
