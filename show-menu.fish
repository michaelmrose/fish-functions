function show-menu
	if exists $vi3op
        set msg (show-op)
    else
        set msg (show-mode)
    end

    echo $msg
end
