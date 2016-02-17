function get-ext
	if exists $argv
        cutlast . "$argv"
    else
        while read -l line
            get-ext $line
        end
    end
end
