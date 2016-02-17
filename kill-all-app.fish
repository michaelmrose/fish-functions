function kill-all-app
	set target (tri3-msg (return-program-name (appkey $argv)))
    sudo killall $target
    er vi3op
    update-op-status
end
