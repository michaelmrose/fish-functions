function is-window-ph
	xwininfo -all -id $argv | grep 'Client accepts input or input focus: No' > /dev/null
end
