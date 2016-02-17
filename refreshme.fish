function refreshme
	for i in (seq $argv)
        xdotool key Control+r
        if not match $keep_refreshing yes
            return 0
        end
        sleep 60
    end
end
