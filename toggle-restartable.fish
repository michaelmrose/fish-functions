function toggle-restartable
	if contains $argv $restartable_services
        remove-from-restartable $argv
        echo $argv will no longer be restarted
    else
        add-to-restartable $argv
        echo $argv will now be restarted automatically
    end
end
