function pick-book-by-cover
	set choice (findindex (sxiv -tbfor $RECENT_BOOK_COVERS) $RECENT_BOOK_COVERS)
  zathura $recent_reads[$choice] &
end
