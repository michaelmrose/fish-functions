# Defined in /home/michael/.config/fish/buffer/pick-book-by-cover_search-book.fish @ line 13
function search-book-by-cover
	set list (calibredb list -s title:$argv -f title| cut -d ' ' -f2-)
  set choices (sxiv -tbfor (apply-to-list get-cover-based-on-title $list))
  for choice in $choices
      set books $books $list[(findindex $choice $RECENT_BOOK_COVERS)]
  end
  p $books | book-list
  # set covers (apply-to-list get-cover-based-on-title $list)
end
