function set-default-sink
	set targetop (math $argv-1)
    pacmd "set-default-sink $targetop"
end
