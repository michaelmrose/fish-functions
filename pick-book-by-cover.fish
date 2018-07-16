# Defined in /home/michael/.config/fish/buffer/pick-book-by-cover_set-recent-.fish @ line 2
function pick-book-by-cover
	# books $recent_reads[(findindex (sxiv -tbfor $RECENT_BOOK_COVERS) $RECENT_BOOK_COVERS)]
  set-recent-book-covers
  set choices (sxiv -tbfor (apply-to-list get-cover-based-on-title $recent_reads))
  for choice in $choices
      set books $books $recent_reads[(findindex $choice $RECENT_BOOK_COVERS)]
  end
  p $books | book-list
end
