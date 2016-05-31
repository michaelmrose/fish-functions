function get-active-sink
	pacmd list-sinks |awk '/* index:/{print $3}'
end
