# Defined in /home/michael/.config/fish/buffer/pick-book-by-cover_set-recent-.fish @ line 13
function set-recent-book-covers
	set -U RECENT_BOOK_COVERS (apply-to-list get-cover-based-on-title $recent_reads)
end
