function manual-text
	set tmp /tmp/man-(uid)
    man $argv > $tmp
    cat $tmp
end
