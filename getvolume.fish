function getvolume
	set result (ponymix get-volume)%
    if ponymix is-muted
        set result \($result\)
    end
    echo $result
end
