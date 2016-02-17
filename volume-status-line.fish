function volume-status-line
	set vol (getvolume)
    if is-muted
        echo  $vol
    else
        echo  $vol
    end
end
