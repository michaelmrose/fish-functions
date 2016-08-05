function open-book-based-on-cover
	echo (books $recent_reads[(findindex "$argv" $RECENT_BOOK_COVERS)]) | book-list
end
