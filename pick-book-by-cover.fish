function pick-book-by-cover
	eval books (get-title-from-cover (sxiv -tbfor $RECENT_BOOK_COVERS))
end
