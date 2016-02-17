function list-books
	set files (ls)
    filter files pdf
    filter files epub
end
