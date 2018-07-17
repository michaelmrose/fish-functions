# Defined in /home/michael/.config/fish/buffer/pick-book-by-cover_search-book.fish @ line 13
function search-book-by-cover
	set list (calibredb list -s title:$argv -f title| cut -d ' ' -f2-)

    set covers (apply-to-list get-cover-based-on-title $list)
    for choice in $covers
        set books $books $recent_reads[(findindex $choice $RECENT_BOOK_COVERS)]
    end
    p $books | book-list
end
