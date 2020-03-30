# Defined in /home/michael/.config/fish/buffer/sync-saved-spelling-lists.fish @ line 2
function sync-saved-spelling-lists
    set aspell ~/.aspell.en.pws
    set hunspell ~/.hunspell_en_US
    set enchant ~/.config/enchant/en_US.dic
    set firefox $FIREFOX_WORDS_FILE

    set aspellcontents (cat $aspell)
    set header $aspellcontents[1]
    set aspellwords $aspellcontents[2..-1]

    set firefoxwords (cat $firefox)
    set enchantwords (cat $enchant)
    set hunspellwords (cat $hunspell)

    set combined (p $aspellwords $firefoxwords $enchantwords $hunspellwords | sort -u)

    p $header > $aspell
    p $combined >> $aspell
    p $combined > $firefox
    p $combined > $hunspell
    p $combined > $enchant
end
