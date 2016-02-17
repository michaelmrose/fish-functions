function players-exist
	set result (playerctl -l)
    if [ $result = "No players were found" ]
        return 1
    else
        return 0
    end
end
