function jco
	switch "$argv"
        case '-*'
            j $argv
        case '*'
            jo (pwd) $argv
    end
end
