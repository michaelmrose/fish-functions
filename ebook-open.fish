function ebook-open
    set book(fullpath "$argv")
	echo book is $book
    rdr -o $book
end
