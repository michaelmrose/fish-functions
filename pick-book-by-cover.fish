function pick-book-by-cover
	# books $recent_reads[(findindex (sxiv -tbfor $RECENT_BOOK_COVERS) $RECENT_BOOK_COVERS)]
  set choices (sxiv -tbfor $RECENT_BOOK_COVERS)
  for choice in $choices
    set books $books $recent_reads[(findindex $choice $RECENT_BOOK_COVERS)]
  end
  echo book-list $books
      
	# books $recent_reads[(findindex (sxiv -tbfor $RECENT_BOOK_COVERS) $RECENT_BOOK_COVERS)]
end
