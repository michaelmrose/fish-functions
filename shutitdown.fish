function shutitdown
	if exists $argv
        set -U shutitdown $argv
        return 0
    end
    if contains $shutitdown t true
        set -U shutitdown false
        sudo shutdown -h now
    end
end
