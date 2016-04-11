function search-books-by-cover
	set titles (query-calibre-title $argv)
  set covers (apply-to-list 'get-cover-by-title' $titles)
  set choices (sxiv -tbfor $covers)
  for choice in $choices
    set books $books $titles[(findindex $choice $covers)]
  end
  for book in $books
    books $book &
  end
end
