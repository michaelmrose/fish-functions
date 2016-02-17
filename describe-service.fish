function describe-service
	if n man $argv > /dev/null
        set tmp /tmp/man-(uid)
        echo (eval manual-text $argv | gr -A 1 name)[2] | condense_spaces
    end
end
