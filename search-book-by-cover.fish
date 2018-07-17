# Defined in /home/michael/.config/fish/buffer/search-book-by-cover.fish @ line 1
function search-book-by-cover
	set list (calibredb list -s title:$argv -f title| cut -d ' ' -f2-)

    set covers (apply-to-list get-cover-based-on-title $list)
    sxiv -tbfor $covers
end
