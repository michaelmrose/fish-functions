function open-book-based-on-cover
	set choice $argv
  set books $recent_reads[(findindex $choice $RECENT_BOOK_COVERS)]
  echo book | book-list
end
