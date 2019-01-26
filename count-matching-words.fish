# Defined in /home/michael/.config/fish/buffer/count-matching-words.fish @ line 2
function count-matching-words
	set words (echo $argv | cut -d @ -f1 | trim)
    set text (echo $argv | cut -d @ -f2| trim)
    set cnt 0
    for word in (explode-words $words)
        if echo $text |g $word > /dev/null
            set cnt (increase $cnt)
        end
    end
    echo $cnt
end
