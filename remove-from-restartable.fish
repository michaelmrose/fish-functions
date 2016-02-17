function remove-from-restartable
	set -U restartable_services (remove-from-list $argv $restartable_services)
    return 0
end
