function isnumeric
	if exists $argv
        echo $argv | grep -E '^[.0-9]+$' > /dev/null
    end
end
