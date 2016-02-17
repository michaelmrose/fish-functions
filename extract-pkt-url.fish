function extract-pkt-url
	if exists $argv
        cutlastn : -2 $argv | trim
    end
end
