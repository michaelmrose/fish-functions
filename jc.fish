function jc
	switch "$argv"
        case '-*'
            j $argv
        case '*'
            j (pwd) $argv
    end
end
