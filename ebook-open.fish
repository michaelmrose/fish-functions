function ebook-open
    set -l book(fullpath "$argv")
	echo book is $book
    rdr -o $book
end
