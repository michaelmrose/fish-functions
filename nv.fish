function nv
	if in-terminal
        nvim $argv
        trans 88 > /dev/null
    else
        lilyterm -e nvim $argv
        trans 88
    end
end
