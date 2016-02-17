function explode
	if contains-spaces $argv
        explode-words $argv
    else
        explode-word $argv
    end
end
