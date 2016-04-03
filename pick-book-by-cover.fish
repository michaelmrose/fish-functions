function pick-book-by-cover
	# set title (get-title-from-cover (sxiv -tbfor $RECENT_BOOK_COVERS))
  set choice (findindex (sxiv -tbfor $RECENT_BOOK_COVERS) $RECENT_BOOK_COVERS)
  books $recent_reads[$choice]
  # echo $title
  # eval books $title
end
