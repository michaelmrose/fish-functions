function colorscheme
	if not match $colors $argv
        set -U colors $argv
        update-vi3-config
    end
end
