function chromeless3
	firefox -P chromeless -no-remote $argv &
    sleep 3
    unset-fullscreen
end
