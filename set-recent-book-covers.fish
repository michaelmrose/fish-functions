function set-recent-book-covers
	set RECENT_BOOK_COVERS (apply-to-list get-cover-by-title $recent_reads)
end
