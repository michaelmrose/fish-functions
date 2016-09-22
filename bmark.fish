function bmark
	if not exists $argv
        return 1
    end
    switch $argv[1]
        case dl
          echo /med/dl
        case docs
          echo ~/docs
        case proj
          echo ~/proj
        case '*'
            return 1
    end
end
