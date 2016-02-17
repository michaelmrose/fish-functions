function move-all-audio-streams
	set apps (pacmd list-sink-inputs | sed -n -e 's/index:[[:space:]]\([[:digit:]]\)/\1/p')
    # set targetop (math $argv-1)
    for i in $apps
        pacmd "move-sink-input $i $argv"
    end
end
