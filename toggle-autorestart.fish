function toggle-autorestart
	if istrue $restart_services
        set -U restart_services false
    else
        set -U restart_services true
    end
end
