# Defined in /home/michael/.config/fish/buffer/sync-saved-spelling-lists.fish @ line 2
function sync-saved-spelling-lists
    set aspell ~/.aspell.en.pws
    set hunspell ~/.hunspell_en_US
    set enchant ~/.config/enchant/en_US.dic
    set firefox $FIREFOX_WORDS_FILE
    set libreoffice ~/.config/libreoffice/4/user/wordbook/standard.dic

    set aspell_contents (cat $aspell)
    set aspell_header $aspellcontents[1]
    set aspell_words $aspellcontents[2..-1]

    set firefox_words (cat $firefox)
    set enchant_words (cat $enchant)
    set hunspell_words (cat $hunspell)

    set libreoffice_contents (cat $libreoffice)
    set libreoffice_header (p $libreoffice_contents[1..4])
    set libreoffice_words (p $libreoffice_contents[5..-1])

    set combined (p $aspell_words $firefox_words $enchant_words $hunspell_words $libreoffice_words | sort -u)

    p $aspell_header > $aspell
    p $combined >> $aspell

    p $combined > $firefox
    p $combined > $hunspell
    p $combined > $enchant
end
