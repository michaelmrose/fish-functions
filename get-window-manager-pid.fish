function get-window-manager-pid
    for pid in (pgrep lightdm)
	if pgrep -u michael -P $pid
	    return 0
	end
	end
end
