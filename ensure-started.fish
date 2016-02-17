function ensure-started
	if not runningp $argv
        bash -c $argv &
    end
    while not pgrep $argv
    end
end
