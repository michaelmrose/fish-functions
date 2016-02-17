function filter-images
	set imgtypes bmp gif jpg jpeg
    filter-with-expr is-an-image $argv
end
