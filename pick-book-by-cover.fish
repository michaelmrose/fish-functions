function pick-book-by-cover
	set choice (findindex (sxiv -tbfor $RECENT_BOOK_COVERS) $RECENT_BOOK_COVERS)
  books $recent_reads[$choice]
	# set choice (findindex (sxiv -tbfor $RECENT_BOOK_COVERS) $RECENT_BOOK_COVERS)
end
