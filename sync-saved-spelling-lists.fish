# Defined in /home/michael/.config/fish/buffer/sync-saved-spelling-lists.fish @ line 1
function sync-saved-spelling-lists
    set words (p (cat ~/.aspell.en.pws)[2..-1] $FIREFOX_WORDS_FILE | sort -u) 
    p $words > $FIREFOX_WORDS_FILE
end
