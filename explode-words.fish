function explode-words
	if substr $argv @
        set char @
    else
        set char ' '
    end

    echo $argv | sed "s/$char/\n/g"
end
