# Defined in /home/michael/.config/fish/buffer/count-matching-words.fish @ line 1
function count-matching-words
	set words (echo $argv | cut -d @ -f1)
    set text (echo $argv | cut -d @ -f2)
    set cnt 0
    for word in $words
        if echo $text |g $word > /dev/null
            set cnt (increase $cnt)
        end
    end
    echo $cnt
end
