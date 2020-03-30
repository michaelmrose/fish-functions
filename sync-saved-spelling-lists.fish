# Defined in /home/michael/.config/fish/buffer/sync-saved-spelling-lists.fish @ line 2
function sync-saved-spelling-lists
    set aspell ~/.aspell.en.pws
    set hunspell ~/.hunspell_en_US
    set aspellcontents (cat $aspell)
    set header $aspellcontents[1]
    set aspellwords $aspellcontents[2..-1]
    set firefoxwords (cat $FIREFOX_WORDS_FILE)
    set combined (p $aspellwords $firefoxwords | sort -u)

    p $header > $aspell
    p $combined >> $aspell
    p $combined > $FIREFOX_WORDS_FILE
    p $combined > $hunspell
end
