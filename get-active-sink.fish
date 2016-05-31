function get-active-sink
	list-sinks |awk '/* index:/{print $3}'
end
