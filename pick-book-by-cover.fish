function pick-book-by-cover
	set title (get-title-from-cover (sxiv -tbfor $RECENT_BOOK_COVERS))
  echo $title
  eval books $title
end
