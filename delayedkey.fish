function delayedkey
	set secs $argv[1]
    set keys $argv[2..-1]
    sleep $secs
    for i in $keys
        xdotool key $i
    end
end
