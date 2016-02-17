function unlockmeminimal
	if [ $locked = "false" ]
        return 0
    else
        restore-workspaces
        im bar mode dock
        set -U locked false
    end
end
