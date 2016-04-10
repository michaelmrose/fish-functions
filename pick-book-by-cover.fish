function pick-book-by-cover
	book-list $recent_reads[(findindex (sxiv -tbfor $RECENT_BOOK_COVERS) $RECENT_BOOK_COVERS)]
end
