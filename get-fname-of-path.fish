function get-fname-of-path
	if exists $argv
        cutlast "/" $argv
    else
        while read -l line
           get-fname-of-path $line
        end
    end
end
