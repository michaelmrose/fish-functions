function add-to-restartable
	set -U restartable_services (add-unique-to-list $argv $restartable_services)
end
