function toggle-restartables
	set -U restart_services (toggle-bool $restart_services)
    echo $restart_services
end
