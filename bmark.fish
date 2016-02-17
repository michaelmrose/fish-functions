function bmark
	if not exists $argv
        return 1
    end
    switch $argv[1]
        case dl
            echo /mnt/ext/dl
        case '*'
            return 1
    end
end
