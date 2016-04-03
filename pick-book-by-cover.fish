function pick-book-by-cover
	# set title (get-title-from-cover (sxiv -tbfor $RECENT_BOOK_COVERS))
  set cover (sxiv -tbfor $RECENT_BOOK_COVERS)
  set choice (findindex $cover $RECENT_BOOK_COVERS)
  books $recent_reads[$choice]
  # echo $title
  # eval books $title
end
