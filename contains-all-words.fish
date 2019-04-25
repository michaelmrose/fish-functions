# Defined in /home/michael/.config/fish/buffer/contains-all-words.fish @ line 1
function contains-all-words
	while read -l line
        set res $line
        for word in $argv
            set res (echo $res |g $word)
        end
    end
end
